.class public Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;
.super Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KswapdReclaimer"
.end annotation


# static fields
.field public static final KSWAPD_MODE_AGGRESSIVE:I = 0x2

.field public static final KSWAPD_MODE_DEFAULT:I = 0x0

.field public static KSWAPD_MODE_SUPPORT:Z = false

.field public static KSWAPD_MODE_SUPPORT_CHECKED:Z = false

.field public static final KSWAPD_MODE_SUPPRESSED:I = 0x1

.field public static kswapdModePath:Ljava/lang/String; = "/sys/kernel/mm/vmscan/mem_boost_mode_kswapd"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "kswapd"

    const/4 v1, 0x0

    .line 978
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final kswapdModeSupported()Z
    .registers 4

    .line 992
    sget-boolean p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT_CHECKED:Z

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    .line 993
    sput-boolean p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT_CHECKED:Z

    .line 994
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 995
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->kswapdModePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 997
    sput-boolean p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT:Z

    .line 999
    :cond_1a
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1001
    :cond_1d
    sget-boolean p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->KSWAPD_MODE_SUPPORT:Z

    return p0
.end method

.method public onSuppressBegin()V
    .registers 2

    const-string v0, "KswapdReclaimer: suppress begin"

    .line 982
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 983
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->writeKswapdMode(I)V

    return-void
.end method

.method public onSuppressEnd()V
    .registers 2

    const-string v0, "KswapdReclaimer: suppress end"

    .line 987
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 988
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->writeKswapdMode(I)V

    return-void
.end method

.method public final writeKswapdMode(I)V
    .registers 6

    .line 1005
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->kswapdModeSupported()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 1008
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    const/4 v0, 0x0

    .line 1011
    :try_start_c
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;->kswapdModePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_2d
    .catchall {:try_start_c .. :try_end_1a} :catchall_2b

    .line 1012
    :try_start_1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_28
    .catchall {:try_start_1a .. :try_end_21} :catchall_25

    .line 1018
    :try_start_21
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_36

    goto :goto_36

    :catchall_25
    move-exception p0

    move-object v0, v1

    goto :goto_3a

    :catch_28
    move-exception p1

    move-object v0, v1

    goto :goto_2e

    :catchall_2b
    move-exception p0

    goto :goto_3a

    :catch_2d
    move-exception p1

    .line 1014
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    if-eqz v0, :cond_36

    .line 1018
    :try_start_33
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_36

    .line 1023
    :catch_36
    :cond_36
    :goto_36
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_3a
    if-eqz v0, :cond_3f

    .line 1018
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_3f

    .line 1022
    :catch_3f
    :cond_3f
    throw p0
.end method
