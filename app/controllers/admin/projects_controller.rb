class Admin::ProjectsController < ApplicationController
  layout "admin"
  def index
    @projects = Project.all.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    # @product = Product.find(params[:product_id])
    @project = Project.find(params[:id])
  end

  def new
    # @product = Product.find(params[:product_id])
    @project = Project.new
    @project_categories = Product.all.map { |c| [c.title, c.id] }
  end



  def create
    # @product = Product.find(params[:product_id])  # 通过project数据表里的product_id,找到product的ID。也就是先找到爹是谁。 project.product_id == product.id
    @project = Project.new(project_params) # 把新建的数据的content传给实体变量@project
    # @project.product = @product # 从def create 第一行里拿到的@product, 把它的值赋给@project的product。
    @project.user = current_user
    @project.product_id = params[:product_id]

    if @project.save
      redirect_to admin_projects_path,notice: "添加项目成功！"
    else
      render :new
    end
  end

  def edit
    # @product = Product.find(params[:product_id])  # 通过project数据表里的product_id,找到product的ID。也就是先找到爹是谁。 project.product_id == product.id
    @project = Project.find(params[:id]) # 把新建的数据的content传给实体变量@project
    @project_categories = Product.all.map { |c| [c.title, c.id] }
  end

  def update
    # @product = Product.find(params[:product_id])
    @project = Project.find(params[:id])
    if params[:product_id].blank?
      params[:product_id] = @project.product_id
    end
    @project.product_id = params[:product_id]

    if @project.update(project_params)
      redirect_to admin_projects_path,notice: "项目编辑成功！"
    else
      render :edit
    end
  end

  def destroy
    # @product = Product.find(params[:product_id])
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_path,notice: "删除项目成功！"
  end

  private

  def project_params
    params.require(:project).permit(:title, :content,:image,:details,:advantage,:observe,:apply,:product_id)
  end
end
