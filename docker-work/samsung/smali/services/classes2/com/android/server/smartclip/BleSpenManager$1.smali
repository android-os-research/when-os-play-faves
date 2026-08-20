.class public Lcom/android/server/smartclip/BleSpenManager$1;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/BleSpenManager;->registerAirActionSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/BleSpenManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V
    .registers 3

    .line 2575
    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 2578
    iget-object p0, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    invoke-static {p0}, Lcom/android/server/smartclip/BleSpenManager;->-$$Nest$monAirActionSettingChanged(Lcom/android/server/smartclip/BleSpenManager;)V

    return-void
.end method
