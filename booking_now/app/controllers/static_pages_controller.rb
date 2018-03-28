class StaticPagesController < ApplicationController
  $err = 0
  $flag_find = 0

  def home
  end

  def table
    @tableinfos = BookingInfo.all
    @tablebefores = BookingBefore.all
    @tableafters = BookingAfter.all
    @tablecounts = BookingCount.all
  end

  def booking

  end

  def live
  end

  def living
    begin 
      @b_tel = params[:b_tel]
      @g_name = params[:g_name]
      @b_room = params[:b_room]
      @sex = params[:options]
      @idnum = params[:g_id]
      @sqlliving = "call p2_guests_insert(\'" + @b_tel + "\'," + @b_room + ",\'" + @g_name + "\',\'" + @sex + "\'," + @idnum + ")"
      @rliving = ActiveRecord::Base.connection.execute @sqlliving
      render 'living'  
    rescue Exception
      redirect_to '\live'
    end  
  end


  def search
    @guestinfo = Guestinfo.all
  end

  def find  
    @idcard = params[:cardid]
    @sql = "call p5_guests_find(\'" + @idcard + "\')"
    @fr = ActiveRecord::Base.connection.execute @sql
    $flag_find = 1
    render 'search'
  end

  def create
    @name = params[:c_name]
    @tel = params[:c_tel]
    @room = params[:c_room]
    @payment = params[:options]
    @date = params[:c_date]
    begin
      $err = 1
      @sql = "call p4_bookings_insert(\'" + @name + "\',\'" + @tel + "\'," + @room + ",\'" + @date + "\'," + @payment + ")"
      @r = ActiveRecord::Base.connection.execute @sql
      render 'create'
    rescue Exception
      redirect_to '\booking'
    end
  end

  def checkout

  end

  def checkouting
    begin
      @checkout_room = params[:checkout_room]
      @checkout_sql = "call p3_bookings_update(" + @checkout_room + ")"
      @cr = ActiveRecord::Base.connection.execute @checkout_sql
      render 'checkouting'
    rescue Exception
      redirect_to '\checkout'
    end      
  end

  def test
  end

  def searchroom
    @roominfos = RoomInfo.all
  end
end
