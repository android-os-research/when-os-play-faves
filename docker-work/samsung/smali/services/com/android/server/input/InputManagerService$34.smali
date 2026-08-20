.class public Lcom/android/server/input/InputManagerService$34;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerTertiaryButtonBehaviorSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 6726
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 6729
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$34;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateTertiaryButtonBehaviorFromSetting()V

    return-void
.end method
