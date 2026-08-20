.class public final Lcom/android/internal/inputmethod/InputBindResult;
.super Ljava/lang/Object;
.source "InputBindResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputBindResult$ResultCode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputBindResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NULL:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

.field public static final blacklist USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;


# instance fields
.field public blacklist accessibilitySessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist channel:Landroid/view/InputChannel;

.field public final blacklist id:Ljava/lang/String;

.field public final blacklist isInputMethodSuppressingSpellChecker:Z

.field private final blacklist mVirtualDisplayToScreenMatrixValues:[F

.field public final blacklist method:Lcom/android/internal/view/IInputMethodSession;

.field public final blacklist result:I

.field public final blacklist sequence:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 339
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputBindResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 406
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    .line 410
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    .line 414
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    .line 418
    nop

    .line 419
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

    .line 423
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    .line 427
    nop

    .line 428
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    .line 432
    nop

    .line 433
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    .line 437
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    .line 442
    nop

    .line 443
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

    .line 448
    nop

    .line 449
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

    .line 455
    nop

    .line 456
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputBindResult;->error(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    .line 455
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V
    .registers 10
    .param p1, "result"    # I
    .param p2, "method"    # Lcom/android/internal/view/IInputMethodSession;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "sequence"    # I
    .param p7, "virtualDisplayToScreenMatrix"    # Landroid/graphics/Matrix;
    .param p8, "isInputMethodSuppressingSpellChecker"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/view/IInputMethodSession;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;",
            "Landroid/view/InputChannel;",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Matrix;",
            "Z)V"
        }
    .end annotation

    .line 249
    .local p3, "accessibilitySessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    .line 251
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    .line 252
    iput-object p3, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 253
    iput-object p4, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 254
    iput-object p5, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    .line 255
    iput p6, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    .line 256
    if-nez p7, :cond_15

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->mVirtualDisplayToScreenMatrixValues:[F

    goto :goto_1e

    .line 259
    :cond_15
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->mVirtualDisplayToScreenMatrixValues:[F

    .line 260
    invoke-virtual {p7, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 262
    :goto_1e
    iput-boolean p8, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    .line 263
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_1d

    .line 270
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    goto :goto_3c

    .line 272
    :cond_1d
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 273
    :goto_24
    if-lez v0, :cond_3c

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .local v2, "key":I
    nop

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 276
    invoke-static {v3}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move-result-object v3

    .line 278
    .local v3, "value":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    iget-object v4, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 279
    nop

    .end local v2    # "key":I
    .end local v3    # "value":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    add-int/lit8 v0, v0, -0x1

    .line 280
    goto :goto_24

    .line 282
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 283
    sget-object v1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    goto :goto_4f

    .line 285
    :cond_4d
    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    .line 287
    :goto_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->mVirtualDisplayToScreenMatrixValues:[F

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    .line 291
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/inputmethod/InputBindResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist error(I)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 11
    .param p0, "result"    # I

    .line 400
    new-instance v9, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object v9
.end method

.method private blacklist getResultString()Ljava/lang/String;
    .registers 3

    .line 361
    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_52

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :pswitch_21
    const-string v0, "ERROR_INVALID_DISPLAY_ID"

    return-object v0

    .line 391
    :pswitch_24
    const-string v0, "ERROR_DISPLAY_ID_MISMATCH"

    return-object v0

    .line 377
    :pswitch_27
    const-string v0, "ERROR_NO_EDITOR"

    return-object v0

    .line 389
    :pswitch_2a
    const-string v0, "ERROR_NOT_IME_TARGET_WINDOW"

    return-object v0

    .line 387
    :pswitch_2d
    const-string v0, "ERROR_NULL_EDITOR_INFO"

    return-object v0

    .line 385
    :pswitch_30
    const-string v0, "ERROR_INVALID_USER"

    return-object v0

    .line 383
    :pswitch_33
    const-string v0, "ERROR_IME_NOT_CONNECTED"

    return-object v0

    .line 381
    :pswitch_36
    const-string v0, "ERROR_SYSTEM_NOT_READY"

    return-object v0

    .line 379
    :pswitch_39
    const-string v0, "ERROR_INVALID_PACKAGE_NAME"

    return-object v0

    .line 375
    :pswitch_3c
    const-string v0, "ERROR_NO_IME"

    return-object v0

    .line 373
    :pswitch_3f
    const-string v0, "ERROR_NULL"

    return-object v0

    .line 371
    :pswitch_42
    const-string v0, "SUCCESS_REPORT_WINDOW_FOCUS_ONLY"

    return-object v0

    .line 369
    :pswitch_45
    const-string v0, "SUCCESS_WAITING_USER_SWITCHING"

    return-object v0

    .line 367
    :pswitch_48
    const-string v0, "SUCCESS_WAITING_IME_BINDING"

    return-object v0

    .line 365
    :pswitch_4b
    const-string v0, "SUCCESS_WAITING_IME_SESSION"

    return-object v0

    .line 363
    :pswitch_4e
    const-string v0, "SUCCESS_WITH_IME_SESSION"

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/InputChannel;->describeContents()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist getVirtualDisplayToScreenMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->mVirtualDisplayToScreenMatrixValues:[F

    if-nez v0, :cond_6

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->mVirtualDisplayToScreenMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 226
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBindResult{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputBindResult;->getResultString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " virtualDisplayToScreenMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputBindResult;->getVirtualDisplayToScreenMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isInputMethodSuppressingSpellChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 310
    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-nez v0, :cond_13

    .line 313
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 315
    :cond_13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 316
    .local v0, "n":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "i":I
    :goto_1b
    if-ge v1, v0, :cond_34

    .line 319
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 324
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_42

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_46

    .line 328
    :cond_42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    :goto_46
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->mVirtualDisplayToScreenMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 333
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    return-void
.end method
