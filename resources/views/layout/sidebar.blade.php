<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
      <span class="brand-text font-weight-light">Admin</span>
    </a>
    <div class="sidebar">
        <nav class="mt-2">
            <ul class="nav nav-treeview nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item">
                    <a href="{{route('dashboard')}}" class="nav-link">
                        <i class="fas fa-tachometer-alt nav-icon"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                @if(Auth::user()->type == 'superadmin')
                    <li class="nav-item">
                        <a href="{{Route('user')}}" class="nav-link">
                            <i class="fas fa-users-cog nav-icon"></i>
                            <p>User</p>
                        </a>
                    </li>
                @endif
                <li class="nav-item">
                    <a href="{{route('customer')}}" class="nav-link">
                        <i class="fas fa-user-friends nav-icon"></i>
                        <p>Customer</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('product')}}" class="nav-link">
                        <i class="fas fa-shopping-cart nav-icon"></i>
                        <p>Product</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('logout') }}" class="nav-link">
                        <i class="fas fa-sign-out-alt nav-icon"></i>
                        <p>Logout</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</aside>
