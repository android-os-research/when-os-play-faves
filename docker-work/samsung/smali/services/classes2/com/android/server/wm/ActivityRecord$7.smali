.class public synthetic Lcom/android/server/wm/ActivityRecord$7;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$server$wm$ActivityRecord$State:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 3752
    invoke-static {}, Lcom/android/server/wm/ActivityRecord$State;->values()[Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    :try_start_9
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/android/server/wm/ActivityRecord$7;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method
