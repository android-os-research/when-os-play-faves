.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2

    .line 2906
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "Trying to connect to EnterpriseSimPin Service"

    .line 2908
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.mdm.services.simpin"

    const-string v3, "com.sec.enterprise.mdm.services.simpin.EnterpriseSimPin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2913
    :try_start_19
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.enterprise.SimPinCode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmSimPinServiceConn(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_3a

    :catch_35
    const-string p0, "Failed to bind Sim Pin Service"

    .line 2916
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method
