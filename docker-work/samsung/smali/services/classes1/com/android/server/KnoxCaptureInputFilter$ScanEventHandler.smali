.class public final Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;
.super Landroid/os/Handler;
.source "KnoxCaptureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KnoxCaptureInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScanEventHandler"
.end annotation


# instance fields
.field public activeScanInput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/KnoxCaptureInputFilter;

.field public unicodeCodepoint:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    .line 148
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;-><init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final convertNumpadToString(Landroid/view/KeyEvent;)Ljava/lang/String;
    .registers 2

    .line 275
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    packed-switch p0, :pswitch_data_28

    const-string p0, "\u0000"

    return-object p0

    :pswitch_a
    const-string p0, "9"

    return-object p0

    :pswitch_d
    const-string p0, "8"

    return-object p0

    :pswitch_10
    const-string p0, "7"

    return-object p0

    :pswitch_13
    const-string p0, "6"

    return-object p0

    :pswitch_16
    const-string p0, "5"

    return-object p0

    :pswitch_19
    const-string p0, "4"

    return-object p0

    :pswitch_1c
    const-string p0, "3"

    return-object p0

    :pswitch_1f
    const-string p0, "2"

    return-object p0

    :pswitch_22
    const-string p0, "1"

    return-object p0

    :pswitch_25
    const-string p0, "0"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x90
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public final getAsciiControlChar(Landroid/view/KeyEvent;)[B
    .registers 6

    .line 292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_185

    const/16 v3, 0x45

    if-eq p0, v3, :cond_198

    packed-switch p0, :pswitch_data_1b0

    packed-switch p0, :pswitch_data_1e8

    goto/16 :goto_1ab

    .line 293
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_21

    new-array p0, v2, [B

    aput-byte v2, p0, v1

    return-object p0

    .line 294
    :cond_21
    :pswitch_21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_2d

    new-array p0, v2, [B

    const/4 p1, 0x2

    aput-byte p1, p0, v1

    return-object p0

    .line 295
    :cond_2d
    :pswitch_2d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_39

    new-array p0, v2, [B

    const/4 p1, 0x3

    aput-byte p1, p0, v1

    return-object p0

    .line 296
    :cond_39
    :pswitch_39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_45

    new-array p0, v2, [B

    const/4 p1, 0x4

    aput-byte p1, p0, v1

    return-object p0

    .line 297
    :cond_45
    :pswitch_45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_51

    new-array p0, v2, [B

    const/4 p1, 0x5

    aput-byte p1, p0, v1

    return-object p0

    .line 298
    :cond_51
    :pswitch_51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_5d

    new-array p0, v2, [B

    const/4 p1, 0x6

    aput-byte p1, p0, v1

    return-object p0

    .line 299
    :cond_5d
    :pswitch_5d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_69

    new-array p0, v2, [B

    const/4 p1, 0x7

    aput-byte p1, p0, v1

    return-object p0

    .line 300
    :cond_69
    :pswitch_69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_76

    new-array p0, v2, [B

    const/16 p1, 0x8

    aput-byte p1, p0, v1

    return-object p0

    .line 301
    :cond_76
    :pswitch_76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_83

    new-array p0, v2, [B

    const/16 p1, 0x9

    aput-byte p1, p0, v1

    return-object p0

    .line 302
    :cond_83
    :pswitch_83
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_90

    new-array p0, v2, [B

    const/16 p1, 0xa

    aput-byte p1, p0, v1

    return-object p0

    .line 303
    :cond_90
    :pswitch_90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_9d

    new-array p0, v2, [B

    const/16 p1, 0xb

    aput-byte p1, p0, v1

    return-object p0

    .line 304
    :cond_9d
    :pswitch_9d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_aa

    new-array p0, v2, [B

    const/16 p1, 0xc

    aput-byte p1, p0, v1

    return-object p0

    .line 305
    :cond_aa
    :pswitch_aa
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_b5

    new-array p0, v2, [B

    aput-byte v0, p0, v1

    return-object p0

    .line 306
    :cond_b5
    :pswitch_b5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_c2

    new-array p0, v2, [B

    const/16 p1, 0xe

    aput-byte p1, p0, v1

    return-object p0

    .line 307
    :cond_c2
    :pswitch_c2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_cf

    new-array p0, v2, [B

    const/16 p1, 0xf

    aput-byte p1, p0, v1

    return-object p0

    .line 308
    :cond_cf
    :pswitch_cf
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_dc

    new-array p0, v2, [B

    const/16 p1, 0x10

    aput-byte p1, p0, v1

    return-object p0

    .line 309
    :cond_dc
    :pswitch_dc
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_e9

    new-array p0, v2, [B

    const/16 p1, 0x11

    aput-byte p1, p0, v1

    return-object p0

    .line 310
    :cond_e9
    :pswitch_e9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_f6

    new-array p0, v2, [B

    const/16 p1, 0x12

    aput-byte p1, p0, v1

    return-object p0

    .line 311
    :cond_f6
    :pswitch_f6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_103

    new-array p0, v2, [B

    const/16 p1, 0x13

    aput-byte p1, p0, v1

    return-object p0

    .line 312
    :cond_103
    :pswitch_103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_110

    new-array p0, v2, [B

    const/16 p1, 0x14

    aput-byte p1, p0, v1

    return-object p0

    .line 313
    :cond_110
    :pswitch_110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_11d

    new-array p0, v2, [B

    const/16 p1, 0x15

    aput-byte p1, p0, v1

    return-object p0

    .line 314
    :cond_11d
    :pswitch_11d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_12a

    new-array p0, v2, [B

    const/16 p1, 0x16

    aput-byte p1, p0, v1

    return-object p0

    .line 315
    :cond_12a
    :pswitch_12a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_137

    new-array p0, v2, [B

    const/16 p1, 0x17

    aput-byte p1, p0, v1

    return-object p0

    .line 316
    :cond_137
    :pswitch_137
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_144

    new-array p0, v2, [B

    const/16 p1, 0x18

    aput-byte p1, p0, v1

    return-object p0

    .line 317
    :cond_144
    :pswitch_144
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_151

    new-array p0, v2, [B

    const/16 p1, 0x19

    aput-byte p1, p0, v1

    return-object p0

    .line 318
    :cond_151
    :pswitch_151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_15e

    new-array p0, v2, [B

    const/16 p1, 0x1a

    aput-byte p1, p0, v1

    return-object p0

    .line 319
    :cond_15e
    :pswitch_15e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_16b

    new-array p0, v2, [B

    const/16 p1, 0x1b

    aput-byte p1, p0, v1

    return-object p0

    .line 320
    :cond_16b
    :pswitch_16b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_178

    new-array p0, v2, [B

    const/16 p1, 0x1c

    aput-byte p1, p0, v1

    return-object p0

    .line 321
    :cond_178
    :pswitch_178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_185

    new-array p0, v2, [B

    const/16 p1, 0x1d

    aput-byte p1, p0, v1

    return-object p0

    .line 322
    :cond_185
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_198

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_198

    new-array p0, v2, [B

    const/16 p1, 0x1e

    aput-byte p1, p0, v1

    return-object p0

    .line 323
    :cond_198
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1ab

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_1ab

    new-array p0, v2, [B

    const/16 p1, 0x1f

    aput-byte p1, p0, v1

    return-object p0

    :cond_1ab
    :goto_1ab
    new-array p0, v2, [B

    aput-byte v1, p0, v1

    return-object p0

    :pswitch_data_1b0
    .packed-switch 0x1d
        :pswitch_16
        :pswitch_21
        :pswitch_2d
        :pswitch_39
        :pswitch_45
        :pswitch_51
        :pswitch_5d
        :pswitch_69
        :pswitch_76
        :pswitch_83
        :pswitch_90
        :pswitch_9d
        :pswitch_aa
        :pswitch_b5
        :pswitch_c2
        :pswitch_cf
        :pswitch_dc
        :pswitch_e9
        :pswitch_f6
        :pswitch_103
        :pswitch_110
        :pswitch_11d
        :pswitch_12a
        :pswitch_137
        :pswitch_144
        :pswitch_151
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x47
        :pswitch_15e
        :pswitch_178
        :pswitch_16b
    .end packed-switch
.end method

.method public final getUnicodeChar(Ljava/lang/String;)[B
    .registers 7

    .line 330
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 331
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 332
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 333
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getUnicodeChar codePointStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " codePoint: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " unicodeChars: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3b
    array-length p0, v0

    new-array p0, p0, [B

    .line 338
    array-length p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_41
    if-ge v1, p1, :cond_4e

    aget-char v3, v0, v1

    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    .line 339
    aput-byte v3, p0, v2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4f

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_41

    :cond_4e
    return-object p0

    :catch_4f
    move-exception p0

    .line 344
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getUnicodeChar exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x353

    if-eq v0, v1, :cond_dc

    const/16 p1, 0x354

    if-eq v0, p1, :cond_c

    goto/16 :goto_f4

    .line 165
    :cond_c
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 166
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanEventHandler, END, activeScanDeviceId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    invoke-static {v1}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$fgetactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->processKeyEvent(Landroid/view/KeyEvent;)[B

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 172
    array-length v3, v1

    :goto_4f
    if-ge v2, v3, :cond_3b

    aget-byte v4, v1, v2

    .line 173
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 178
    :cond_5d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b0

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    add-int/lit8 v4, v1, 0x1

    .line 182
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    move v1, v4

    goto :goto_6e

    .line 184
    :cond_84
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 185
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScanEventHandler, END, scannedInput: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_a7
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$fgetactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$mupdateBarcodeDataFromhw(Lcom/android/server/KnoxCaptureInputFilter;I[B)V

    .line 192
    :cond_b0
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 193
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScanEventHandler, END, clearing active scan input"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_bf
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 196
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$fputactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;I)V

    .line 197
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_f4

    .line 198
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_f4

    .line 157
    :cond_dc
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 158
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanEventHandler, MSG_NEXT_KEY_EVENT, new key event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_eb
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f4
    :goto_f4
    return-void
.end method

.method public final isAsciiControlCharacter(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 264
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x36

    if-le p0, v0, :cond_38

    .line 265
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x47

    if-eq p0, v0, :cond_38

    .line 266
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x48

    if-eq p0, v0, :cond_38

    .line 267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x49

    if-eq p0, v0, :cond_38

    .line 268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_38

    .line 269
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x45

    if-ne p0, v0, :cond_40

    .line 270
    :cond_38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x1

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    return p0
.end method

.method public final isUnicodeCodepoint(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x90

    if-lt p0, v0, :cond_18

    .line 259
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x99

    if-gt p0, v0, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final processKeyEvent(Landroid/view/KeyEvent;)[B
    .registers 9

    .line 208
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processKeyEvent event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e8

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->isUnicodeCodepoint(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_60

    .line 216
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v4, " processKeyEvent, unicode codepoint"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_41
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->convertNumpadToString(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5e

    .line 219
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->getUnicodeChar(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_c6

    :cond_5e
    move v2, v3

    goto :goto_c6

    .line 223
    :cond_60
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->isAsciiControlCharacter(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->getAsciiControlChar(Landroid/view/KeyEvent;)[B

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 229
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processKeyEvent, ascii ctrl char="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    .line 229
    invoke-virtual {v0, v6, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 234
    :cond_9e
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 235
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, " processKeyEvent, any other character"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_ad
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    new-array v1, v2, [B

    .line 238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    .line 238
    invoke-virtual {v0, v4, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    :cond_c6
    :goto_c6
    if-eqz v2, :cond_e8

    .line 243
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 244
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, " processKeyEvent, clear unicode codepoint buffer"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_d7
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_e8

    .line 247
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_e8
    return-object v1
.end method
