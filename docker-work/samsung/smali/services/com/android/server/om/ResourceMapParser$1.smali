.class public synthetic Lcom/android/server/om/ResourceMapParser$1;
.super Ljava/lang/Object;
.source "ResourceMapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/ResourceMapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$server$om$ResourceMapParser$ResourceType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 262
    invoke-static {}, Lcom/android/server/om/ResourceMapParser$ResourceType;->values()[Lcom/android/server/om/ResourceMapParser$ResourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/om/ResourceMapParser$1;->$SwitchMap$com$android$server$om$ResourceMapParser$ResourceType:[I

    :try_start_9
    sget-object v1, Lcom/android/server/om/ResourceMapParser$ResourceType;->COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/om/ResourceMapParser$1;->$SwitchMap$com$android$server$om$ResourceMapParser$ResourceType:[I

    sget-object v1, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
