.class public Lcom/android/server/appprelauncher/AppPrelaunchService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppPrelaunchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appprelauncher/AppPrelaunchService;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V
    .registers 2

    .line 763
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$3;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 766
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$3;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mperformInstallActionBroadcast(Lcom/android/server/appprelauncher/AppPrelaunchService;Landroid/content/Intent;)V

    return-void
.end method
