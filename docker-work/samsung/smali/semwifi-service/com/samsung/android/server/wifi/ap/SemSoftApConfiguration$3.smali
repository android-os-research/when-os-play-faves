.class Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$3;
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

    .line 278
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->-$$Nest$fgetchannel2G(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$3;->put(II)V

    return-void
.end method
