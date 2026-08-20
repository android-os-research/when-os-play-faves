.class public Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
.super Lvendor/samsung/hardware/health/ISehHealthInfoCallback$Stub;
.source "HealthRegCallbackAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthRegCallbackAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalInfoCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthRegCallbackAidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-direct {p0}, Lvendor/samsung/hardware/health/ISehHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "notfrozen"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public healthInfoChanged(Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-static {p0}, Lcom/android/server/health/HealthRegCallbackAidl;->-$$Nest$fgetmServiceInfoCallback(Lcom/android/server/health/HealthRegCallbackAidl;)Lcom/android/server/health/HealthInfoCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method
