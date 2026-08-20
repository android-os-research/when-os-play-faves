.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$3:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$1:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$2:Ljava/util/Set;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;->f$3:Lcom/samsung/android/server/wifi/util/LogUtils;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$VGSKhGj38u8zJcy_PYYC91_yrFg(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;Landroid/net/wifi/ScanResult;)V

    return-void
.end method
