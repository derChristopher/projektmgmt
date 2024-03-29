class NodesController < ApplicationController
  before_action :set_node, only: [:show, :edit, :update, :destroy]


  # GET /nodes
  # GET /nodes.json
  def index
    nodeList = Node.where(project_id: params[:project_id])
    @nodes = sort_list_with_parent nodeList

  end

  # GET /:project_id/nodes/graph'
  def graph
    nodeList = Node.where(project_id: params[:project_id])

#    data_table = GoogleVisualr::DataTable.new
#    data_table.new_column('string', 'ID' )
#    data_table.new_column('string', 'Parent')
#    data_table.new_column('string', 'ToolTip')

    res= Array.new

    nodeList.each do |nodeItem|
      nodeId = nodeItem.id.to_s
      nodeName = nodeItem.name
      nodeDescription = nodeItem.description
      nodeParent = nodeItem.parent
      nodeParentId = ''
      if nodeParent != nil
        nodeParentId = nodeParent.id.to_s
      end
      if nodeDescription == nil
        nodeDescription = ''
      end

      res.push([{v: nodeId, f: nodeName}, nodeParentId, nodeDescription])

    end

    respond_to do |format|
      format.html { render :new }
      format.json { render json: res }
    end
    # @pbsChart = generate_organisation_graph data_table

  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
  end

  # GET /nodes/new
  def new
    @node = Node.new
  end

  # GET /nodes/1/edit
  def edit
  end

  # POST /nodes
  # POST /nodes.json
  def create
    @node = Node.new(node_params)

    if @node.parent
      @node.level = @node.parent.level+1
    else
      @node.level = 0
    end

    respond_to do |format|
      if @node.save
        format.html { redirect_to @node, notice: 'Node was successfully created.' }
        format.json { render :show, status: :created, location: @node }
      else
        format.html { render :new }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
    respond_to do |format|
      if @node.update(node_params)
        format.html { redirect_to @node, notice: 'Node was successfully updated.' }
        format.json { render :show, status: :ok, location: @node }
      else
        format.html { render :edit }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to nodes_url, notice: 'Node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_params
      params.require(:node).permit(:name, :description, :level, :duration, :startdate, :enddate, :milestone, :project_id, :parent_id)
    end
end
