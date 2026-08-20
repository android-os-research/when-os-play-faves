.class Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;
.super Landroid/os/IServiceCallback$Stub;
.source "SemSupplicantStaIfaceHalAidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;


# direct methods
.method public static synthetic $r8$lambda$Haqdh6gvwaOjvUZba2IU_D8DQ5s(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;->lambda$onRegistration$0()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)V

    return-void
.end method

.method private synthetic lambda$onRegistration$0()V
    .registers 3

    const-string v0, "SemSupplicantStaIfaceHalAidlImpl"

    const-string v1, "Notify ISupplicant service registration, trying to connect"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->attachDaemon()Z

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->-$$Nest$sfgetHAL_INSTANCE_NAME()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 94
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl$ServiceCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
