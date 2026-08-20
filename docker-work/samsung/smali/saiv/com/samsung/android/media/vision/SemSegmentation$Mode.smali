.class public final enum Lcom/samsung/android/media/vision/SemSegmentation$Mode;
.super Ljava/lang/Enum;
.source "SemSegmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vision/SemSegmentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vision/SemSegmentation$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 27
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v1, "AUTO_WITH_FG_LOOP_MARKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 31
    new-instance v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v3, "AUTO_WITH_BG_LOOP_MARKER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 35
    new-instance v3, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v5, "AUTO_WITH_FG_STROKE_MARKER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 39
    new-instance v5, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v7, "AUTO_WITH_BG_STROKE_MARKER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 43
    new-instance v7, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v9, "MANUAL_WITH_FG_LOOP_MARKER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 47
    new-instance v9, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v11, "MANUAL_WITH_BG_LOOP_MARKER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 51
    new-instance v11, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v13, "MANUAL_WITH_FG_STROKE_MARKER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 55
    new-instance v13, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v15, "MANUAL_WITH_BG_STROKE_MARKER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 59
    new-instance v15, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const-string v14, "NONE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 23
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .registers 1

    .line 23
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object v0
.end method
