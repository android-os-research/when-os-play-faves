.class public Lcom/android/server/am/AppProfiler$1;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$1;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 372
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "activity_start_pss_defer"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 373
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$1;->this$0:Lcom/android/server/am/AppProfiler;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppProfiler;->-$$Nest$fputmPssDeferralTime(Lcom/android/server/am/AppProfiler;J)V

    .line 374
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz p1, :cond_3c

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity-start PSS delay now "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$1;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmPssDeferralTime(Lcom/android/server/am/AppProfiler;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method
