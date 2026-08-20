.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;
.super Landroid/content/BroadcastReceiver;
.source "ThermalStatusRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo p1, "job_restriction"

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 144
    iget-object p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {p2}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fgetmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z

    move-result p2

    if-eq p2, p1, :cond_1d

    .line 145
    iget-object p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {p2, p1}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->-$$Nest$fputmForceRestricted(Lcom/android/server/job/restrictions/ThermalStatusRestriction;Z)V

    .line 146
    iget-object p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_1d
    return-void
.end method
