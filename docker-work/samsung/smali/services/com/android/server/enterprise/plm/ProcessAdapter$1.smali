.class public synthetic Lcom/android/server/enterprise/plm/ProcessAdapter$1;
.super Ljava/lang/Object;
.source "ProcessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/plm/ProcessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 103
    invoke-static {}, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->values()[Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$1;->$SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I

    :try_start_9
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$1;->$SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I

    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$1;->$SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I

    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
