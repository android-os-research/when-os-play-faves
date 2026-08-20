.class public Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;
.super Ljava/lang/Object;
.source "VisionServerApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/visionserver/VisionServerApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyListBody"
.end annotation


# instance fields
.field public module:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "module"
    .end annotation
.end field

.field public search:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "search"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;",
            ">;"
        }
    .end annotation
.end field

.field public service:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;->service:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;->module:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;->search:Ljava/util/List;

    return-void
.end method
