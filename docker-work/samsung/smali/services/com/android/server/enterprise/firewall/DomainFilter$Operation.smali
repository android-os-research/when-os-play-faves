.class final enum Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
.super Ljava/lang/Enum;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/firewall/DomainFilter$Operation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum FLUSHLIBC:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

.field public static final enum REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 117
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 118
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v3, "REMOVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 119
    new-instance v3, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v5, "CLEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 120
    new-instance v5, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v7, "REPLACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 121
    new-instance v7, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v9, "EXCEPTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 122
    new-instance v9, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v11, "CAP_PORTAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 123
    new-instance v11, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v13, "NET_ID"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 124
    new-instance v13, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const-string v15, "FLUSHLIBC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->FLUSHLIBC:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 116
    sput-object v15, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->$VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    .registers 2

    .line 116
    const-class v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    .registers 1

    .line 116
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->$VALUES:[Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    return-object v0
.end method
