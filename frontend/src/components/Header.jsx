
function Header(){

 return(

   <header className="bg-[#E3D0B4] flex justify-between items-center px-4 py-3 shadow-md">
    <div className="flex items-center gap-4">

    </div>

    {/* Right Content */}
    <div className="flex items-center gap-4">
      <div className="flex items-center gap-2">
        <div className="text-right hidden sm:block">
          <p className="text-sm font-semibold">Mosico Team</p>
          <p className="text-xs text-gray-600">Admin</p>
        </div>  
      </div>
    </div>
   </header>

 );

}

export default Header