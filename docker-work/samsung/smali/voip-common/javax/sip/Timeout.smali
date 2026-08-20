.class public final enum Ljavax/sip/Timeout;
.super Ljava/lang/Enum;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/sip/Timeout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljavax/sip/Timeout;

.field public static final enum blacklist RETRANSMIT:Ljavax/sip/Timeout;

.field public static final enum blacklist TRANSACTION:Ljavax/sip/Timeout;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Ljavax/sip/Timeout;

    const-string v1, "RETRANSMIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/sip/Timeout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    .line 5
    new-instance v1, Ljavax/sip/Timeout;

    const-string v3, "TRANSACTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/sip/Timeout;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Ljavax/sip/Timeout;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ljavax/sip/Timeout;->$VALUES:[Ljavax/sip/Timeout;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljavax/sip/Timeout;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Ljavax/sip/Timeout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/sip/Timeout;

    return-object v0
.end method

.method public static blacklist values()[Ljavax/sip/Timeout;
    .registers 1

    .line 3
    sget-object v0, Ljavax/sip/Timeout;->$VALUES:[Ljavax/sip/Timeout;

    invoke-virtual {v0}, [Ljavax/sip/Timeout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/sip/Timeout;

    return-object v0
.end method
