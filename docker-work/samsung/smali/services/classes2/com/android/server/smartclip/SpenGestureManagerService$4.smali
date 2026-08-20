.class public Lcom/android/server/smartclip/SpenGestureManagerService$4;
.super Lcom/android/internal/content/PackageMonitor;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->registerPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 3

    .line 478
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetPACKAGE_NAME_AIRCOMMAND()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 479
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "air_cmd_mode"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    return-void
.end method
