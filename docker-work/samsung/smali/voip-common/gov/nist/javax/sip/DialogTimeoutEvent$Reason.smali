.class public final enum Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
.super Ljava/lang/Enum;
.source "DialogTimeoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/DialogTimeoutEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum greylist AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum greylist AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

.field public static final enum greylist ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 7

    .line 34
    new-instance v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    const-string v1, "AckNotReceived"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    new-instance v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    const-string v3, "AckNotSent"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    new-instance v3, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    const-string v5, "ReInviteTimeout"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    const/4 v5, 0x3

    new-array v5, v5, [Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-object v0
.end method

.method public static greylist values()[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .registers 1

    .line 34
    sget-object v0, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    invoke-virtual {v0}, [Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-object v0
.end method
