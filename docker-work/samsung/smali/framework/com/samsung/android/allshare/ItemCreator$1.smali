.class synthetic Lcom/samsung/android/allshare/ItemCreator$1;
.super Ljava/lang/Object;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ItemCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

.field static final synthetic blacklist $SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 137
    invoke-static {}, Lcom/samsung/android/allshare/Item$MediaType;->values()[Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    sget-object v3, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    sget-object v4, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    :try_start_2e
    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    sget-object v4, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v3

    :goto_3b
    :try_start_3b
    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    sget-object v4, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v3

    .line 76
    :goto_48
    invoke-static {}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->values()[Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    :try_start_51
    sget-object v4, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->MEDIA_SERVER:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception v1

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    move-exception v0

    :goto_67
    :try_start_67
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$1;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    sget-object v1, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_72

    goto :goto_73

    :catch_72
    move-exception v0

    :goto_73
    return-void
.end method
