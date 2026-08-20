.class public Lcom/android/server/display/WifiDisplayAdapter$10;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->enableScreenInTile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 3

    .line 643
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    .line 647
    :try_start_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartmirroring"

    const-string v3, "com.samsung.android.smartmirroring.tile.ScreenSharingTile"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 648
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 649
    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$userId:I

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3, v3, p0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    const-string/jumbo p0, "support screen sharing ready, use ScreenInTile"

    .line 650
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_2c

    :catch_23
    move-exception p0

    const-string v1, "Component not found"

    .line 652
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2c
    return-void
.end method
