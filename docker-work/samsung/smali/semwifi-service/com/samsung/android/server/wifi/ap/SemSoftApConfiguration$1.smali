.class Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$1;
.super Landroid/util/SparseIntArray;
.source "SemSoftApConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$1;->put(II)V

    const/4 v0, 0x2

    const/16 v1, 0x95

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$1;->put(II)V

    return-void
.end method
