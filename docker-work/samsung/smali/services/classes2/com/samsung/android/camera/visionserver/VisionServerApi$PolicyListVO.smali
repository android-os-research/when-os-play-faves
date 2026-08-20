.class public Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;
.super Ljava/lang/Object;
.source "VisionServerApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/visionserver/VisionServerApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyListVO"
.end annotation


# instance fields
.field public disallowUnihalVersion:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->packageName:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->disallowUnihalVersion:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;->value:Ljava/lang/String;

    return-void
.end method
