.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;
.super Ljava/lang/Thread;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChainingStateMachine"
.end annotation


# instance fields
.field public connectingStateSleepTime:J

.field public idleStateSleepTime:J

.field public profileName:Ljava/lang/String;

.field public requiredState:I

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field public threadStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;I)V
    .registers 6

    .line 8255
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    .line 8251
    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    const-wide/16 v0, 0x1388

    .line 8252
    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->idleStateSleepTime:J

    .line 8253
    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    .line 8256
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    .line 8258
    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->requiredState:I

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 1

    return-void
.end method

.method public final startChainedConnection(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method
