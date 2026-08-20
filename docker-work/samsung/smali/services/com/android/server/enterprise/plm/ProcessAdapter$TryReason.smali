.class final enum Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
.super Ljava/lang/Enum;
.source "ProcessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/plm/ProcessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TryReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

.field public static final enum UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 134
    new-instance v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 135
    new-instance v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v3, "STOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 136
    new-instance v3, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v5, "ALIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 137
    new-instance v5, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v7, "DEATH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    .line 138
    new-instance v7, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const-string v9, "UPDATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 133
    sput-object v9, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->$VALUES:[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
    .registers 2

    .line 133
    const-class v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
    .registers 1

    .line 133
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->$VALUES:[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    return-object v0
.end method
