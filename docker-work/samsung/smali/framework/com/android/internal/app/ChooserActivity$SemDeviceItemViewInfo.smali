.class Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemDeviceItemViewInfo"
.end annotation


# instance fields
.field public blacklist deviceId:Ljava/lang/String;

.field public blacklist deviceItemProgress:I

.field public blacklist deviceItemStatus:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "progress"    # I

    .line 10111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10112
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceId:Ljava/lang/String;

    .line 10113
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    .line 10114
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    .line 10115
    return-void
.end method
