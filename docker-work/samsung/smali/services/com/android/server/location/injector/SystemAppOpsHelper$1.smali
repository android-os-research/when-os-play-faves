.class public Lcom/android/server/location/injector/SystemAppOpsHelper$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "SystemAppOpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/injector/SystemAppOpsHelper;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;


# direct methods
.method public static synthetic $r8$lambda$03vzpUPtvAUQ49w4puMTTCAo_4Q(Lcom/android/server/location/injector/SystemAppOpsHelper$1;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->lambda$onOpChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onOpChanged$0(Ljava/lang/String;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/AppOpsHelper;->notifyMockLocationAppOpChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 4

    .line 65
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
