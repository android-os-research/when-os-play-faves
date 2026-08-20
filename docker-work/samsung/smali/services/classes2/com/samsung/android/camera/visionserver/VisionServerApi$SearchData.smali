.class public Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;
.super Ljava/lang/Object;
.source "VisionServerApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/visionserver/VisionServerApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchData"
.end annotation


# instance fields
.field public field:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "field"
    .end annotation
.end field

.field public operator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operator"
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;->field:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;->operator:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;->value:Ljava/lang/String;

    return-void
.end method
