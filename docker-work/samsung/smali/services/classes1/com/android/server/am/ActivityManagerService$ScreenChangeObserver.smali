.class public final Lcom/android/server/am/ActivityManagerService$ScreenChangeObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenChangeObserver"
.end annotation


# instance fields
.field public final mDisplayChangeUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .line 1454
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ScreenChangeObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1455
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "display_size_forced"

    .line 1452
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ScreenChangeObserver;->mDisplayChangeUri:Landroid/net/Uri;

    .line 1456
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1457
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    const-string p1, "ActivityManager"

    const-string v0, "Changes ExtraFreeKbytes .."

    .line 1462
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$ScreenChangeObserver;->mDisplayChangeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1464
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$ScreenChangeObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mupdateExtraFreeKbytes(Lcom/android/server/am/ActivityManagerService;)V

    :cond_14
    return-void
.end method
