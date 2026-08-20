.class public Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiState"
.end annotation


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mBehavior:I

.field public mDisabled1:I

.field public mDisabled2:I

.field public mImeBackDisposition:I

.field public mImeToken:Landroid/os/IBinder;

.field public mImeWindowVis:I

.field public mNavbarColorManagedByIme:Z

.field public mPackageName:Ljava/lang/String;

.field public mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field public mShowImeSwitcher:Z

.field public final mTransientBarTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeToken(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestedVisibilities(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/view/InsetsVisibilities;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclearTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->clearTransient([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableEquals(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetBarAttributes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisabled(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetImeWindowState(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZLandroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->showTransient([I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1957
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    .line 1958
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1959
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    .line 1960
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1962
    new-instance v1, Landroid/view/InsetsVisibilities;

    invoke-direct {v1}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    const-string v1, "none"

    .line 1963
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 1964
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1965
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1966
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1967
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1968
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    const/4 v0, 0x0

    .line 1969
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearTransient([I)V
    .registers 6

    .line 1990
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 1991
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method

.method public final disableEquals(II)Z
    .registers 4

    .line 2009
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_a

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne p0, p2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final getDisabled1()I
    .registers 1

    .line 1996
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return p0
.end method

.method public final getDisabled2()I
    .registers 1

    .line 2000
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return p0
.end method

.method public final setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .registers 7

    .line 1975
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1976
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1977
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1978
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 1979
    iput-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 1980
    iput-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public final setDisabled(II)V
    .registers 3

    .line 2004
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 2005
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return-void
.end method

.method public final setImeWindowState(IIZLandroid/os/IBinder;)V
    .registers 5

    .line 2014
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 2015
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 2016
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 2017
    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-void
.end method

.method public final showTransient([I)V
    .registers 6

    .line 1984
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 1985
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method
