class UsersController < ApplicationController
skip_before_action :check_session, :only=>[:login,:validate_login]

  def user_index
    @user=User.all
     #@user=User.new
    #@user = User.find(session[:user_id]).name
  end

  def new
    @user=User.new
    @user = User.find(session[:user_id]).name 
  end
      
  def create
     @user=User.new(user_params)
    if @user.save
       redirect_to :action=> "index_admin"
    else
       render "new"
    end
  end

  def user_destroy
    @user = User.find params[:id]
    @user.destroy
    flash[:notice] = "user Deleted Successfully!!!"
    redirect_to :action=>"index_admin"
  end

  def login
    @user=User.new
  end

  def validate_login
    params.permit!
    @user=User.where params[:user]
      if not @user.blank?
        session[:user_id]=@user.first.id
        redirect_to :action=>"dashboard"
      else
        redirect_to root_path
      end
  end
  
   def logout
     session[:user_id]=nil
     redirect_to root_path
   end
   
  def dashboard
    @user=User.new
    @user = User.find(session[:user_id]).name
  end

  def add_orderSummary
    @user=User.new
    @order_summary=OrderSummary.new
   @user = User.find(session[:user_id]).name
  end

  def get_order
    @order_summary=OrderSummary.new(order_summary_params)
    if @order_summary.save
    
    flash[:notice] = "Order Saved Successfully!!!"
      redirect_to :action => "index_orderSummary"
      else
      flash.now[:notice] = "Order not Saved"
      render "add_orderSummary"
    end
  end
 
  def index_orderSummary
    @user=User.new
     @user = User.find(session[:user_id]).name
     @order_summary = OrderSummary.all
    @order_summary=OrderSummary.paginate(page: params[:page], per_page: 2).order("created_at DESC")
  end
  
  def show_orderSummary
    @user=User.new
     @user = User.find(session[:user_id]).name
    @order_summary = OrderSummary.find params[:id]
  end

  def edit_orderSummary
   @user=User.new
    @user = User.find(session[:user_id]).name
    @order_summary = OrderSummary.find params[:id]
  end

  def update_orderSummary
   @user=User.new
    @user = User.find(session[:user_id]).name
    @order_summary = OrderSummary.find params[:id]
    if @order_summary.update_attributes(order_summary_params)
       flash[:notice] = "Order Updated Successfully!!!"
       redirect_to :action=> "index_orderSummary"
    else
       render "edit_orderSummary"
    end
  end
  
  def delete_orderSummary
   @order_summary = OrderSummary.find params[:id]
   @order_summary.destroy
   flash[:notice] = "Order Deleted Successfully!!!"
   redirect_to :action=>"index_orderSummary"
  end

   
   def add_purchase
    @user=User.new
    @purchase=Purchase.new
   @user = User.find(session[:user_id]).name
  end

  def get_purchase
      @purchase=Purchase.new(purchase_params)
    if @purchase.save
     flash[:notice] = "Purchase Saved Successfully!!!"
     redirect_to :action => "index_purchase"
    else
     flash.now[:notice] = "Purchase not Saved"
     render "add_purchase"
    end
  end

  def index_purchase
    @user=User.new
    @user = User.find(session[:user_id]).name
    @purchase = Purchase.all
    @purchase = Purchase.paginate(page: params[:page], per_page: 2).order("created_at DESC")
  end

  def show_purchase
    @user=User.new
    @user = User.find(session[:user_id]).name
    @purchase = Purchase.find params[:id]
  end

  def edit_purchase
    @user=User.new
     @user = User.find(session[:user_id]).name
    @purchase = Purchase.find params[:id]
  end

  def update_purchase
     @user=User.new
    @user = User.find(session[:user_id]).name
    @purchase = Purchase.find params[:id]
    if @purchase.update_attributes(purchase_params)
       flash[:notice] = "Purchase Updated Successfully!!!"
       redirect_to :action=> "index_purchase"
    else
       render "edit_purchase"
    end
  end

  def delete_purchase
   @purchase = Purchase.find params[:id]
   @purchase.destroy
   flash[:notice] = "Purchase Deleted Successfully!!!"
   redirect_to :action=>"index_purchase"
  end
  
 def add_issues
    @user=User.new
    @issue=Issue.new
   @user = User.find(session[:user_id]).name
  end

  def get_issues
      @issue=Issue.new(issues_params)
    if @issue.save
     flash[:notice] = "Issues Saved Successfully!!!"
      redirect_to :action => "index_issues"
      else
     flash.now[:notice] = "Issues not Saved"
      render "add_issues"
    end
    end

 def index_issues
   @user=User.new
 @user = User.find(session[:user_id]).name
    @issue = Issue.all
    @issue = Issue.paginate(page: params[:page], per_page: 2).order("created_at DESC")
  end

  def show_issues
       @user=User.new
 @user = User.find(session[:user_id]).name
    @issue = Issue.find params[:id]
  end

  def edit_issues
     @user=User.new
 @user = User.find(session[:user_id]).name
    @issue = Issue.find params[:id]
  end

  def update_issues
     @user=User.new
 @user = User.find(session[:user_id]).name
    @issue = Issue.find params[:id]
    if @issue.update_attributes(issues_params)
       flash[:notice] = "Issues Updated Successfully!!!"
       redirect_to :action=> "index_issues"
    else
       render "edit_issues"
    end
  end

  def delete_issues
   @issue = Issue.find params[:id]
   @issue.destroy
   flash[:notice] = "Issues Deleted Successfully!!!"
   redirect_to :action=>"index_issues"
  end


   def add_labour
    @user=User.new
    @labour=Labour.new
   @user = User.find(session[:user_id]).name
  end

  def get_labour
      @labour=Labour.new(labour_params)
    if @labour.save
     flash[:notice] = "Labour Saved Successfully!!!"
      redirect_to :action => "index_labour"
      else
     flash.now[:notice] = "Labour not Saved"
      render "add_labour"
    end
    end

 def index_labour
      @user=User.new
 @user = User.find(session[:user_id]).name
    @labour = Labour.all
    @labour = Labour.paginate(page: params[:page], per_page: 2).order("created_at DESC")
  end

  def show_labour
     @user=User.new
 @user = User.find(session[:user_id]).name
    @labour = Labour.find params[:id]
  end

  def edit_labour
     @user=User.new
 @user = User.find(session[:user_id]).name
    @labour = Labour.find params[:id]
  end

  def update_labour
     @user=User.new
 @user = User.find(session[:user_id]).name
    @labour = Labour.find params[:id]
    if @labour.update_attributes(labour_params)
       flash[:notice] = "Labour Updated Successfully!!!"
       redirect_to :action=> "index_labour"
    else
       render "edit_labour"
    end
  end

  def delete_labour
   @labour = Labour.find params[:id]
   @labour.destroy
   flash[:notice] = "Labour Deleted Successfully!!!"
   redirect_to :action=>"index_labour"
  end

  def index_admin 
     @user=User.new
    @user = User.find(session[:user_id]).name
    @admin=Admin.new
  end
  
  def admin_create
   @admin=Admin.all
  end
 

  def chemical_type_index
     @user=User.new
    @user = User.find(session[:user_id]).name

    @chemical_type=ChemicalType.all
  end 
  def chemical_type_new
   @user=User.new
    @user = User.find(session[:user_id]).name
    @chemical_type=ChemicalType.new
  end
  
  def chemical_type_create
    @chemical_type=ChemicalType.new(chemical_params)
    if @chemical_type.save
     flash[:notice] = "Chemical_type Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Chemical_type not Saved"
      render "index_admin"
    end
  end
 
  def chemical_type_delete
   @chemical_type = ChemicalType.find params[:id]
   @chemical_type.delete
   flash[:notice] = "Chemical Type Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end
  
  def party_order_index
    @user=User.new
    @user = User.find(session[:user_id]).name
   @party_order=PartyOrder.all
  end
  
 def party_order_new
   @user=User.new
    @user = User.find(session[:user_id]).name
    @party_order=PartyOrder.new
 end
  
 def party_order_create
    @party_order=PartyOrder.new(party_order_params)
    if @party_order.save
     flash[:notice] = "Party Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Party not Saved"
      render "index_admin"
    end
  end
  
  def party_order_delete
    @party_order = PartyOrder.find params[:id]
   @party_order.delete
   flash[:notice] = "Party Order Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end
  
  def party_purchase_index
     @user=User.new
    @user = User.find(session[:user_id]).name
    @party_purchase=PartyPurchase.all
  end
 
  def party_purchase_new 
     @user=User.new
    @user = User.find(session[:user_id]).name
@party_purchase=PartyPurchase.new
  end
   
   def party_purchse_create
    @party_purchase=PartyPurchase.new(party_purchase_params)
    if @party_purchase.save
     flash[:notice] = "Party Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Party not Saved"
      render "index_admin"
    end
  end

   def party_purchse_delete
    @party_purchase = PartyPurchase.find params[:id]
   @party_purchase.delete
   flash[:notice] = "Party Purchase Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end
 
  def chemical_index
    @user=User.new
    @user = User.find(session[:user_id]).name
   @chemical=Chemical.all
  end

  def chemical_new 
    @user=User.new
    @user = User.find(session[:user_id]).name
    @chemical=Chemical.new
  end
 
 def chemical_create
    @chemical=Chemical.new(chem_params)
    if @chemical.save
     flash[:notice] = "Chemical Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Chemical not Saved"
      render "index_admin"
    end
  end
  
   def chemical_delete
    @chemical = Chemical.find params[:id]
   @chemical.delete
   flash[:notice] = "Chemical Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end

     def raw_material_index
      @user=User.new
    @user = User.find(session[:user_id]).name
    @raw_material=RawMaterial.all
     end

    def raw_material_new 
    @user=User.new
    @user = User.find(session[:user_id]).name
   @raw_material=RawMaterial.new
    end
    
   def raw_create
    @raw_material=RawMaterial.new(ra_material_params)
    if @raw_material.save
     flash[:notice] = "Raw Material Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Raw Material not Saved"
      render "index_admin"
    end
   end
  
   def raw_delete
    @raw_material = RawMaterial.find params[:id]
   @raw_material.delete
   flash[:notice] = "Raw Material Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end
  
   def reason_for_idle_index
  @user=User.new
    @user = User.find(session[:user_id]).name
    @reason_for_idle_time=ReasonForIdleTime.all
   end   

  def reason_for_idle_new 
 @user=User.new
    @user = User.find(session[:user_id]).name
     @reason_for_idle_time=ReasonForIdleTime.new
  end

    def reasonforidle_create
    @reason_for_idle_time=ReasonForIdleTime.new(reasonidle_params)
    if @reason_for_idle_time.save
     flash[:notice] = "Reason For Idle Time Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Reason For Idle Time not Saved"
      render "index_admin"
    end
  end
   
   def reasonforidle_delete
    @reason_for_idle_time = ReasonForIdleTime.find params[:id]
   @reason_for_idle_time.delete
   flash[:notice] = "Reason For Idle Time Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end

   
   def nature_index
  @user=User.new
    @user = User.find(session[:user_id]).name
    @nature_of_work=NatureOfWork.all
   end
        
     def nature_new 
   @user=User.new
    @user = User.find(session[:user_id]).name
   @nature_of_work=NatureOfWork.new
   end   

  def nature_create
    @nature_of_work=NatureOfWork.new(nature_params)
    if @nature_of_work.save
     flash[:notice] = " Nature Of Work Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Nature Of Work not Saved"
      render "index_admin"
    end
  end
  
  def nature_delete
    @nature_of_work = NatureOfWork.find params[:id]
   @nature_of_work.delete
   flash[:notice] = "Nature Of Work Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end

   
   def goods_index
   @user=User.new
    @user = User.find(session[:user_id]).name
   @finished_goods_name=FinishedGoodsName.all
   end
   
   def goods_new
 @user=User.new
    @user = User.find(session[:user_id]).name
     @finished_goods_name=FinishedGoodsName.new  
   end

   def goods_create
    @finished_goods_name=FinishedGoodsName.new(goods_params)
    if @finished_goods_name.save
     flash[:notice] = "Finished GoodsName Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Finished Goods Name not Saved"
      render "index_admin"
    end
  end

  def goods_delete
    @finished_goods_name = FinishedGoodsName.find params[:id]
   @finished_goods_name.delete
   flash[:notice] = "Finished Goods Name Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end

   
  def mach_use_index
  @user=User.new
    @user = User.find(session[:user_id]).name
  @machine_used=MachineUsed.all
  end 
 
  def mach_use_new
 @user=User.new
    @user = User.find(session[:user_id]).name
     @machine_used=MachineUsed.new
  end

  def machine_use_create
    @machine_used=MachineUsed.new(machine_use_params)
    if @machine_used.save
     flash[:notice] = "Machine Used Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Machine Used not Saved"
      render "index_admin"
    end
  end
  
  def machine_use_delete
   @machine_used = MachineUsed.find params[:id]
   @machine_used.delete
   flash[:notice] = "Machine Used Deleted Successfully!!!"
   redirect_to :action=>"index_admin"
  end

  def mould_index
 @user=User.new
    @user = User.find(session[:user_id]).name
   @mould_no=MouldNo.all
  end
  
  def mould_new
 @user=User.new
    @user = User.find(session[:user_id]).name
   @mould_no=MouldNo.new
  end

  def mould_create
    @mould_no=MouldNo.new(mould_params)
    if @mould_no.save
     flash[:notice] = "Mould No Saved Successfully!!!"
      redirect_to :action => "index_admin"
      else
     flash.now[:notice] = "Mould No not Saved"
      render "index_admin"
    end
  end
   
  def mould_delete
    @mould_no =MouldNo.find params[:id]
    @mould_no.delete
    flash[:notice] = "Mould No Deleted Successfully!!!"
    redirect_to :action=>"index_admin"
  end

  def trash_admin
    @user=User.new
    @user = User.find(session[:user_id]).name
    @order_summary = OrderSummary.only_deleted
    @purchase = Purchase.only_deleted
    @issue = Issue.only_deleted
    @labour = Labour.only_deleted
  end

  def delete_trashOrderSummary
    @order_summary = OrderSummary.only_deleted.find params[:id]
    @order_summary.really_destroy!
    flash[:notice] = "Order Deleted Permanently!!!"
    redirect_to :action=>"trash_admin"
  end

  def delete_trashPurchase
    @purchase = Purchase.only_deleted.find params[:id]
    @purchase.really_destroy!
    flash[:notice] = "Purchase Deleted Permanently!!!"
    redirect_to :action=>"trash_admin"
  end

  def delete_trashIssue
    @issue = Issue.only_deleted.find params[:id]
    @issue.really_destroy!
    flash[:notice] = "Issue Deleted Permanently!!!"
    redirect_to :action=>"trash_admin"
  end

  def delete_trashLabour
    @labour = Labour.only_deleted.find params[:id]
    @labour.really_destroy!
    flash[:notice] = "Labour Deleted Permanently!!!"
    redirect_to :action=>"trash_admin"
  end

  def restore_trashOrderSummary
    @order_summary = OrderSummary.only_deleted.find params[:id]
    @order_summary.restore
    flash[:notice] = "Order Restored Successfully!!!"
    redirect_to :action=>"trash_admin"
  end

  def restore_trashPurchase
    @purchase = Purchase.only_deleted.find params[:id]
    @purchase.restore
    flash[:notice] = "Purchase Restored Successfully!!!"
    redirect_to :action=>"trash_admin"
  end

  def restore_trashIssue
    @issue = Issue.only_deleted.find params[:id]
    @issue.restore
    flash[:notice] = "Issue Restored Successfully!!!"
    redirect_to :action=>"trash_admin"
  end

  def restore_trashLabour
    @labour = Labour.only_deleted.find params[:id]
    @labour.restore
    flash[:notice] = "Labour Restored Successfully!!!"
    redirect_to :action=>"trash_admin"
  end

  private
  def user_params
   params.require(:user).permit!
  end

  def purchase_params
   params.require(:purchase).permit!
  end
  
  def issues_params
   params.require(:issue).permit!
  end
  
  def labour_params
   params.require(:labour).permit!
  end
  
  def order_summary_params
   params.require(:order_summary).permit!
  end

   def chemical_params
     params.require(:chemical_type).permit!
   end

   def chem_params
     params.require(:chemical).permit!  
   end

   def party_order_params
    params.require(:party_order).permit!
   end 

   def party_purchase_params
    params.require(:party_purchase).permit!
   end

   def ra_material_params
    params.require(:raw_material).permit!
   end

   def reasonidle_params
      params.require(:reason_for_idle_time).permit!
   end

   def nature_params
    params.require(:nature_of_work).permit!
   end

   def goods_params
      params.require(:finished_goods_name).permit!
   end

   def mould_params
     params.require(:mould_no).permit!
   end

   def machine_use_params
    params.require(:machine_used).permit!
   end
end
