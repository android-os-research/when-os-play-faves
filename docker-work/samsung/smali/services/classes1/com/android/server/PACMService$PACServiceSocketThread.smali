.class public final Lcom/android/server/PACMService$PACServiceSocketThread;
.super Ljava/lang/Object;
.source "PACMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PACServiceSocketThread"
.end annotation


# static fields
.field public static final PAC_SERVICE_SOCKET_NAME:Ljava/lang/String; = "/dev/socket/pacm/pacmservice"

.field public static final PROD_DEV_PROPERTY:Ljava/lang/String; = "ro.boot.em.status"

.field public static final PROD_DEV_PROPERTY_STATE_DEV:Ljava/lang/String; = "0x1"

.field public static final PROD_DEV_PROPERTY_STATE_USR:Ljava/lang/String; = "0x0"

.field public static final PROD_DEV_PROPERTY_STATE_USR_WITH_EM:Ljava/lang/String; = "0x2"

.field public static final THREAD_TAG:Ljava/lang/String; = "PACMSOCKET"


# instance fields
.field public buffer:[B

.field public mLocalServerSocket:Landroid/net/LocalServerSocket;

.field public mLocalSocket:Landroid/net/LocalSocket;

.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/PACMService;Lcom/android/server/PACMService$PACServiceSocketThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;)V

    return-void
.end method


# virtual methods
.method public BigEndianToLittleEndian([B)[B
    .registers 3

    .line 271
    array-length p0, p1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 272
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 273
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public ByteToInt([B)I
    .registers 2

    .line 268
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public final checkAtdDdex()I
    .registers 5

    .line 346
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "PACMSOCKET"

    if-nez p0, :cond_12

    const-string p0, "atd_ddex is null !!"

    .line 348
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 351
    :cond_12
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "ATD"

    .line 352
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "This cmd is from ATD"

    .line 353
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2c
    const-string p0, "DDEX"

    .line 356
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const-string p0, "This cmd is from DDEX"

    .line 357
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_3b
    return v0
.end method

.method public final checkClassStatus(I)I
    .registers 8

    .line 289
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmCache(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "PACMSOCKET"

    if-eqz v0, :cond_3c

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mode("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is already cached"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 293
    :cond_3c
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_4c

    const-string/jumbo p0, "mWakeLock is null"

    .line 294
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 296
    :cond_4c
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_61

    .line 297
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 300
    :cond_61
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v5, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v5}, Lcom/android/server/PACMService;->-$$Nest$fgetmContext(Lcom/android/server/PACMService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkEmState()Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call getStatus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v0

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatus ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_c4

    .line 307
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v1}, Lcom/android/server/PACMService;->-$$Nest$fgetmCache(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c4
    move v1, v0

    goto :goto_ee

    .line 310
    :cond_c6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tstate : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v1}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", em connected : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 314
    :goto_ee
    iget-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p1}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_103

    .line 315
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_103
    :goto_103
    return v1
.end method

.method public final checkEmState()Z
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final executeCommand(I)[B
    .registers 12

    .line 376
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmLock(Lcom/android/server/PACMService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, ""

    .line 383
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_27f

    if-nez p1, :cond_12

    goto/16 :goto_27f

    :cond_12
    const-string v2, "PACMSOCKET"

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START - executeCommand :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_29c

    .line 391
    :try_start_28
    iget-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {p1}, Lcom/android/server/PACMService$PAC_Packet;->getVersion([B)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4e

    const-string p0, "PACMSOCKET"

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version is abnormal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4c} :catch_279
    .catchall {:try_start_28 .. :try_end_4c} :catchall_29c

    .line 394
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_29c

    return-object v3

    .line 397
    :cond_4e
    :try_start_4e
    iget-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {p1}, Lcom/android/server/PACMService$PAC_Packet;->getCommand([B)I

    move-result p1

    const-string v4, "PACMSOCKET"

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xaf

    const/4 v5, 0x0

    const/16 v6, 0xa1

    if-eqz p1, :cond_175

    if-eq p1, v2, :cond_93

    const-string p0, "PACMSOCKET"

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown command("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v4, -0xffffffd

    goto/16 :goto_1cc

    .line 420
    :cond_93
    iget-object v7, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v7

    const-string v8, "PACMSOCKET"

    const-string v9, "PAC_Packet.PAC_PACKET_CMD_AT_CMD_CHECK:"

    .line 421
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1cb

    .line 424
    new-instance v1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 425
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "PACMSOCKET"

    .line 426
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cmd : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v7, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v7}, Lcom/android/server/PACMService;->-$$Nest$fgetmAtMap(Lcom/android/server/PACMService;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->getCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    move-result-object v7

    if-nez v7, :cond_ec

    .line 430
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isDevAndNoship()Z

    move-result v7

    if-eqz v7, :cond_1cc

    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isForceTestUser()Z

    move-result p0

    if-nez p0, :cond_1cc

    const-string p0, "PACMSOCKET"

    const-string v4, "This command is unregistered. But it is temporarily allowed."

    .line 431
    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e9
    move v4, v6

    goto/16 :goto_1cc

    .line 439
    :cond_ec
    invoke-virtual {v7}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v8

    const/16 v9, 0x1c

    packed-switch v8, :pswitch_data_2a0

    const-string v7, "PACMSOCKET"

    goto :goto_159

    :pswitch_f8
    const-string v4, "PACMSOCKET"

    const-string v7, "This Command is PROTECTED_AT_COMMAND"

    .line 442
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0, v9}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v4

    if-ne v2, v4, :cond_10f

    const-string v4, "PACMSOCKET"

    const-string v7, "This Command is ALLOWED_PROTECTED_AT_COMMAND"

    .line 444
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb0

    goto :goto_15e

    :cond_10f
    const-string v4, "PACMSOCKET"

    const-string v7, "This Command is NOT_ALLOWED_PROTECTED_AT_COMMAND"

    .line 447
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb1

    goto :goto_15e

    :pswitch_119
    const-string v4, "PACMSOCKET"

    const-string v7, "This Command is CP_AT_COMMAND"

    .line 466
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xa2

    goto :goto_15e

    :pswitch_123
    const-string v4, "PACMSOCKET"

    const-string v8, "This Command is USER_OPEN_AT_COMMAND"

    .line 452
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0, v9}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v4

    if-eq v2, v4, :cond_157

    .line 455
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isSecureLock()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkAtdDdex()I

    move-result v8

    invoke-static {v7, v4, v8}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkAttribute(Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;ZI)I

    move-result v4

    const/16 v7, 0xc3

    if-ne v4, v7, :cond_14c

    .line 456
    sget-boolean v7, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    if-ne v7, v2, :cond_14c

    const-string v4, "PACMSOCKET"

    const-string v7, "This Command is now open becauese there is Galaxy Diag Tool"

    .line 457
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_157

    :cond_14c
    if-eq v4, v6, :cond_15e

    const-string v5, "PACMSOCKET"

    const-string v7, "This Command is not USER_OPEN_AT_COMMAND because of attribute"

    .line 460
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    goto :goto_15e

    :cond_157
    :goto_157
    move v4, v6

    goto :goto_15e

    :goto_159
    const-string v8, "This Command is not registered"

    .line 470
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15e
    :goto_15e
    if-eq v4, v6, :cond_1cc

    .line 476
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isDevAndNoship()Z

    move-result v7

    if-eqz v7, :cond_1cc

    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isForceTestUser()Z

    move-result p0

    if-nez p0, :cond_1cc

    const-string p0, "PACMSOCKET"

    const-string v4, "This command is be temporarily allowed. but it will be blocked"

    .line 477
    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e9

    .line 403
    :cond_175
    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {v4, v5}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v4

    if-eqz v4, :cond_1c4

    .line 406
    invoke-virtual {p0, v4}, Lcom/android/server/PACMService$PACServiceSocketThread;->BigEndianToLittleEndian([B)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/PACMService$PACServiceSocketThread;->ByteToInt([B)I

    move-result v4

    const-string v7, "PACMSOCKET"

    .line 407
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parsed_mode("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v4, :cond_1bf

    const-string p0, "PACMSOCKET"

    .line 409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cb

    .line 412
    :cond_1bf
    invoke-virtual {p0, v4}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v4

    goto :goto_1cc

    :cond_1c4
    const-string p0, "PACMSOCKET"

    const-string v4, "Failed to get mode number"

    .line 415
    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cb
    :goto_1cb
    move v4, v5

    .line 489
    :cond_1cc
    :goto_1cc
    invoke-static {}, Lcom/android/server/PACMService;->-$$Nest$sfgetmIsJDMDevice()Z

    move-result p0

    if-eqz p0, :cond_222

    if-nez v5, :cond_1ff

    .line 491
    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->isJDMProtectedCommand(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_1e2

    const-string p0, "PACMSOCKET"

    const-string v5, "This command is JDM protected command"

    .line 492
    invoke-static {p0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_222

    :cond_1e2
    const-string p0, "PACMSOCKET"

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in PACM because of JDM device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_221

    .line 498
    :cond_1ff
    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->isJDMOpenCommand(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_222

    const-string p0, "PACMSOCKET"

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in PACM because of JDM open command"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_221
    move v4, v6

    .line 505
    :cond_222
    :goto_222
    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkSpecialCommand(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_245

    const-string p0, "PACMSOCKET"

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in PACM because of Special command"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_246

    :cond_245
    move v6, v4

    :goto_246
    const-string p0, "PACMSOCKET"

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END - executeCommand :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {v2}, Lcom/android/server/PACMService$PAC_Packet;->initPacket(I)[B

    move-result-object v3

    if-eqz v3, :cond_27d

    .line 513
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {v3, p0, p1}, Lcom/android/server/PACMService$PAC_Packet;->putItem([BLjava/lang/Object;I)[B

    move-result-object v3
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_278} :catch_279
    .catchall {:try_start_4e .. :try_end_278} :catchall_29c

    goto :goto_27d

    :catch_279
    move-exception p0

    .line 516
    :try_start_27a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 519
    :cond_27d
    :goto_27d
    monitor-exit v0

    return-object v3

    :cond_27f
    :goto_27f
    const-string p0, "PACMSOCKET"

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer is abnormal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    monitor-exit v0

    return-object v3

    :catchall_29c
    move-exception p0

    .line 520
    monitor-exit v0
    :try_end_29e
    .catchall {:try_start_27a .. :try_end_29e} :catchall_29c

    throw p0

    nop

    :pswitch_data_2a0
    .packed-switch 0xa1
        :pswitch_123
        :pswitch_119
        :pswitch_f8
        :pswitch_f8
    .end packed-switch
.end method

.method public final isDevAndNoship()Z
    .registers 2

    const-string/jumbo p0, "ro.boot.em.status"

    const-string v0, "0x1"

    .line 333
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0x0"

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "0x2"

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public final isForceTestUser()Z
    .registers 3

    const-string/jumbo p0, "security.pacm.test"

    const-string v0, "false"

    .line 323
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string v0, "PACMSOCKET"

    const-string v1, "[AT command Test Mode] Simulate user device"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return p0
.end method

.method public final isSecureLock()Z
    .registers 4

    const-string v0, "PACMSOCKET"

    const/4 v1, 0x0

    .line 366
    :try_start_3
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmContext(Lcom/android/server/PACMService;)Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 367
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secureLock : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    const-string v2, "Failed to get secureLock"

    .line 370
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return v1
.end method

.method public run()V
    .registers 6

    const-string v0, "PACMSOCKET"

    .line 526
    :try_start_2
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    .line 527
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "/dev/socket/pacm/pacmservice"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 528
    new-instance v1, Landroid/net/LocalServerSocket;

    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 529
    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_d7

    .line 544
    :goto_29
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_b1

    .line 546
    :try_start_2d
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_96

    .line 547
    :try_start_31
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_8a

    .line 548
    :try_start_35
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_7e

    :try_start_39
    const-string v4, "[v.1] Ready to connect."

    .line 550
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_5f

    .line 553
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    .line 555
    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 556
    invoke-virtual {p0, v4}, Lcom/android/server/PACMService$PACServiceSocketThread;->executeCommand(I)[B

    move-result-object v4

    if-nez v4, :cond_5c

    const-string/jumbo v4, "ret is null"

    .line 558
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    .line 559
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_5f

    .line 561
    :cond_5c
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_5f
    :goto_5f
    const-string v4, "Disconnected."

    .line 565
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_39 .. :try_end_64} :catchall_72

    if-eqz v3, :cond_69

    .line 566
    :try_start_66
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_7e

    :cond_69
    if-eqz v2, :cond_6e

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_8a

    :cond_6e
    :try_start_6e
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_96

    goto :goto_29

    :catchall_72
    move-exception v4

    if-eqz v3, :cond_7d

    .line 545
    :try_start_75
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v3

    :try_start_7a
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    throw v4
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v3

    if-eqz v2, :cond_89

    :try_start_81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception v2

    :try_start_86
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    throw v3
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v2

    if-eqz v1, :cond_95

    :try_start_8d
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception v1

    :try_start_92
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_95
    :goto_95
    throw v2
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_96} :catch_96

    :catch_96
    move-exception v1

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket connection may be closed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    :cond_b1
    if-eqz v1, :cond_c0

    .line 573
    :try_start_b3
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_c0

    :catch_b7
    move-exception v1

    const-string v2, "Failed to close server socket."

    .line 576
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 581
    :cond_c0
    :goto_c0
    :try_start_c0
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz p0, :cond_d1

    .line 582
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c7} :catch_c8

    goto :goto_d1

    :catch_c8
    move-exception p0

    const-string v1, "Failed to close mLocalSocket socket."

    .line 585
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d1
    :goto_d1
    const-string p0, "Socket thread has been stopped."

    .line 589
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_d7
    move-exception v1

    const-string/jumbo v2, "mLocalSocket.start Open"

    .line 531
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    :try_start_e1
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz p0, :cond_f3

    .line 535
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e8} :catch_e9

    goto :goto_f3

    :catch_e9
    move-exception p0

    const-string/jumbo v1, "mLocalSocket.start close"

    .line 538
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f3
    :goto_f3
    return-void
.end method
