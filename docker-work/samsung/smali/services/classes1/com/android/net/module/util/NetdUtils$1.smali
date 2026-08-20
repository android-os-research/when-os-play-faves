.class public synthetic Lcom/android/net/module/util/NetdUtils$1;
.super Ljava/lang/Object;
.source "NetdUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/NetdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 265
    invoke-static {}, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->values()[Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/net/module/util/NetdUtils$1;->$SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation:[I

    :try_start_9
    sget-object v1, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/net/module/util/NetdUtils$1;->$SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation:[I

    sget-object v1, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
