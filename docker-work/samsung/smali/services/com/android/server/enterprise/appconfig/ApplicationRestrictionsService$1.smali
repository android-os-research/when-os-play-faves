.class public Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 113
    iget-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    invoke-static {p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->-$$Nest$fgetmUserManager(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)Landroid/os/UserManager;

    move-result-object p1

    const-string p2, "com.android.settings"

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 114
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 115
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->sendBroadcastAsUserInternal(Ljava/lang/String;I)V

    :cond_1a
    return-void
.end method
