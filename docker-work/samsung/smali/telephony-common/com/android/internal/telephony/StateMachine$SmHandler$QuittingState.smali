.class Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;
.super Lcom/android/internal/telephony/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/StateMachine$SmHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/StateMachine$SmHandler;)V
    .registers 2

    .line 781
    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;->this$0:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/telephony/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
