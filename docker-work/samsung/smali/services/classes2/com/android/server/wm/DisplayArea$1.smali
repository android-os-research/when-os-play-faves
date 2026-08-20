.class public synthetic Lcom/android/server/wm/DisplayArea$1;
.super Ljava/lang/Object;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$server$wm$DisplayArea$Type:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 719
    invoke-static {}, Lcom/android/server/wm/DisplayArea$Type;->values()[Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wm/DisplayArea$1;->$SwitchMap$com$android$server$wm$DisplayArea$Type:[I

    :try_start_9
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/wm/DisplayArea$1;->$SwitchMap$com$android$server$wm$DisplayArea$Type:[I

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
