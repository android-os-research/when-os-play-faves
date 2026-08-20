.class Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;
.super Landroid/util/SparseIntArray;
.source "SemSoftApConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V
    .registers 3

    .line 290
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x2

    const/16 v0, 0x95

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;->put(II)V

    return-void
.end method
