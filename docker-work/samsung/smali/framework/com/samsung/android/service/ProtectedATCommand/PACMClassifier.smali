.class public Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;
.super Ljava/lang/Object;
.source "PACMClassifier.java"


# static fields
.field public static final blacklist ATD:I = 0x1

.field public static final blacklist ATDDDEXERR:I = 0x0

.field public static final blacklist DDEX:I = 0x2

.field public static final blacklist NOK:I = 0x0

.field public static final blacklist OK:I = 0x1

.field private static final blacklist PROP_FACBIN_PROPERTY:Ljava/lang/String; = "ro.factory.factory_binary"

.field private static final blacklist PROP_ISMDFPPENABLED_PROPERTY:Ljava/lang/String; = "security.mdf"

.field private static final blacklist PROP_SHIPBIN_PROPERTY:Ljava/lang/String; = "ro.product_ship"

.field private static final blacklist TAG:Ljava/lang/String; = "PACMClassifier"

.field private static final blacklist mSalesCode:Ljava/lang/String;


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 36
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->mSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist checkAttribute(Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;ZI)I
    .registers 13
    .param p0, "atCmd"    # Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    .param p1, "isSecureLock"    # Z
    .param p2, "atdddex"    # I

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getExtendedAttribute()Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;

    move-result-object v0

    .line 267
    .local v0, "attribute":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCmdBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 269
    .local v1, "cmd":Ljava/lang/String;
    const-string/jumbo v2, "ro.product_ship"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "isShipBin":Ljava/lang/String;
    const-string/jumbo v3, "ro.factory.factory_binary"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "isFacBin":Ljava/lang/String;
    const-string/jumbo v4, "security.mdf"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "isMDFEnable":Ljava/lang/String;
    const-string v5, "Enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "PACMClassifier"

    if-eqz v5, :cond_4b

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is blocked when CC mode is enabled"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v5, 0xc1

    return v5

    .line 278
    :cond_4b
    const-string/jumbo v5, "true"

    if-eqz p1, :cond_9a

    if-eqz v2, :cond_9a

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-static {}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->isMaintenanceMode()Z

    move-result v7

    if-nez v7, :cond_9a

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getHasAttribute()Z

    move-result v7

    const/16 v8, 0xc0

    if-eqz v7, :cond_83

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getSecureLockOpen()Z

    move-result v7

    if-nez v7, :cond_9a

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is blocked when secure lock is on there is no SLO althought there is attribute"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v8

    .line 285
    :cond_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is blocked when secure lock is on because there is no attribute"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v8

    .line 290
    :cond_9a
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getHasAttribute()Z

    move-result v7

    if-eqz v7, :cond_1c7

    .line 291
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getCarrierOpen()Z

    move-result v7

    const-string v8, " device"

    if-eqz v7, :cond_e3

    .line 292
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getCarrierOpenList()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e3

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is opened in only ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getCarrierOpenList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") device, so this cmd is block in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/16 v5, 0xc4

    return v5

    .line 299
    :cond_e3
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getCarrierBlock()Z

    move-result v7

    if-eqz v7, :cond_116

    .line 300
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getCarrierBlockList()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_116

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is blocked in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v5, 0xc5

    return v5

    .line 306
    :cond_116
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getShipBlock()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_140

    if-eqz v2, :cond_140

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_140

    if-ne p2, v8, :cond_140

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " must be used in only no ship binary. So this is blocked because this binary is ship binary."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v5, 0xc2

    return v5

    .line 311
    :cond_140
    if-eqz v3, :cond_1a8

    const-string v5, "factory"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a8

    .line 312
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getFacBinOpenATDDDEX()Z

    move-result v5

    const/16 v7, 0xc6

    if-eqz v5, :cond_169

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " must be used in only factory binary. So this is blocked because this binary is not factory binary."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v7

    .line 315
    :cond_169
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getFacBinOpenATD()Z

    move-result v5

    if-eqz v5, :cond_189

    const/4 v5, 0x1

    if-ne p2, v5, :cond_189

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from ATD must be used in only factory binary. So this is blocked because this binary is not factory binary."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v7

    .line 318
    :cond_189
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getFacBinOpenDDEX()Z

    move-result v5

    if-eqz v5, :cond_1a8

    if-ne p2, v8, :cond_1a8

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from DDEX must be used in only factory binary. So this is blocked because this binary is not factory binary."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v7

    .line 324
    :cond_1a8
    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->getCSOpen()Z

    move-result v5

    if-eqz v5, :cond_1c7

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is only opend in Galaxy Diag Tool."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v5, 0xc3

    return v5

    .line 330
    :cond_1c7
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v5

    return v5
.end method

.method private static varargs blacklist checkNullParameter([Ljava/lang/Object;)Z
    .registers 9
    .param p0, "args"    # [Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    .line 52
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 54
    .local v1, "isNull":Z
    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_48

    aget-object v4, p0, v3

    .line 55
    .local v4, "arg":Ljava/lang/Object;
    if-nez v4, :cond_42

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 57
    .local v5, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Parameter("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PACMClassifier"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x1

    .line 60
    .end local v5    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_42
    nop

    .end local v4    # "arg":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 62
    :cond_48
    return v1
.end method

.method public static blacklist checkSpecialCommand(Ljava/lang/String;)I
    .registers 7
    .param p0, "cmd"    # Ljava/lang/String;

    .line 159
    const/high16 v0, -0x10000000

    if-nez p0, :cond_c

    .line 160
    const-string v1, "PACMClassifier"

    const-string v2, "cmd is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v0

    .line 164
    :cond_c
    const-string v1, "ATD"

    const-string v2, "AT+CDV"

    const-string v3, "AT+TESTSPECIAL"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "spcCmds":[Ljava/lang/String;
    :try_start_16
    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_27

    aget-object v4, v1, v3

    .line 170
    .local v4, "spcCmd":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_2b

    if-nez v5, :cond_24

    .line 171
    const/4 v0, 0x1

    return v0

    .line 169
    .end local v4    # "spcCmd":Ljava/lang/String;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 176
    :cond_27
    nop

    .line 178
    const/16 v0, 0xff

    return v0

    .line 173
    :catch_2b
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    return v0
.end method

.method private static blacklist findATCommands(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "atCmd"    # Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ")",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;"
        }
    .end annotation

    .line 67
    .local p0, "atMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 68
    return-object v1

    .line 70
    :cond_14
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 71
    .local v0, "cmdSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;"
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;"
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    .line 74
    .local v3, "CmdRet":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    invoke-virtual {p2, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 75
    return-object v3

    .line 77
    .end local v3    # "CmdRet":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    :cond_31
    goto :goto_1e

    .line 79
    :cond_32
    const-string v3, "PACMClassifier"

    const-string v4, "findATCommands Failed to find command."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v1
.end method

.method public static blacklist getCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;"
        }
    .end annotation

    .line 111
    .local p0, "atMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;>;"
    const-string v0, "PACMClassifier"

    const-string v1, "getCommand() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 114
    return-object v3

    .line 117
    :cond_18
    move-object v1, p1

    .line 119
    .local v1, "cmdName":Ljava/lang/String;
    :try_start_19
    const-string v4, "+"

    const-string v5, "$"

    const-string v6, "^"

    const-string v7, "#"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    :goto_26
    if-ge v2, v5, :cond_4c

    aget-object v6, v4, v2

    .line 121
    .local v6, "token":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_49

    .line 122
    invoke-static {p1, v6}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 123
    goto :goto_4c

    .line 120
    .end local v6    # "token":Ljava/lang/String;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 127
    :cond_4c
    :goto_4c
    if-nez v1, :cond_6b

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get cmd name("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-object v3

    .line 132
    :cond_6b
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashSet;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_71} :catch_c7

    .line 133
    .local v2, "cmdPool":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;"
    const-string v5, "This cmd("

    if-nez v2, :cond_90

    .line 134
    :try_start_75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not registered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v3

    .line 138
    :cond_90
    new-instance v6, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;-><init>(Ljava/lang/String;[B)V

    .line 139
    .local v6, "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 140
    invoke-static {p0, v1, v6}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->findATCommands(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    move-result-object v5

    .line 141
    .local v5, "foundedRet":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    if-nez v5, :cond_ab

    .line 142
    const-string v7, "Failed to find AT Commands"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v3

    .line 146
    :cond_ab
    return-object v5

    .line 149
    .end local v5    # "foundedRet":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    :cond_ac
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") is not registered."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_c6} :catch_c7

    .line 151
    return-object v3

    .line 152
    .end local v1    # "cmdName":Ljava/lang/String;
    .end local v2    # "cmdPool":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;"
    .end local v4    # "tokens":[Ljava/lang/String;
    .end local v6    # "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    :catch_c7
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    return-object v3
.end method

.method private static blacklist getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    const-string v1, "PACMClassifier"

    if-nez p0, :cond_b

    .line 86
    const-string v2, "getName cmd is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v0

    .line 91
    :cond_b
    :try_start_b
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2, p1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 95
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "tmp":Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_2a

    .line 98
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_29

    .line 99
    return-object v1

    .line 105
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_29
    goto :goto_33

    .line 102
    :catch_2a
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getName error occured."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    return-object v0
.end method

.method public static blacklist isJDMOpenCommand(Ljava/lang/String;)I
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input Cmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PACMClassifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/high16 v0, -0x10000000

    if-nez p0, :cond_22

    .line 228
    const-string v2, "cmd is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v0

    .line 232
    :cond_22
    const-string v2, "AT+IFPMICCN=0,0,6,0"

    const-string v3, "AT+BATTTEST=4,7"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "openCmds":[Ljava/lang/String;
    :try_start_2a
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_40

    aget-object v5, v2, v4

    .line 238
    .local v5, "openCmd":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3d

    .line 239
    const-string v3, "This command is a JDM open command"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_44

    .line 240
    const/4 v0, 0x1

    return v0

    .line 237
    .end local v5    # "openCmd":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 246
    :cond_40
    nop

    .line 248
    const/16 v0, 0xb0

    return v0

    .line 243
    :catch_44
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    return v0
.end method

.method public static blacklist isJDMProtectedCommand(Ljava/lang/String;)I
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input Cmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PACMClassifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/high16 v0, -0x10000000

    if-nez p0, :cond_22

    .line 184
    const-string v2, "cmd is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v0

    .line 188
    :cond_22
    const-string v2, "AT+ALERTDIS=0,"

    const-string v3, "AT+DEBUGLVC=0,5"

    const-string v4, "AT+DEBUGLVC=0,6"

    const-string v5, "AT+DEVROOTK=2,2,"

    const-string v6, "AT+DEVROOTK=2,3,"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "protectedCmds":[Ljava/lang/String;
    :try_start_30
    array-length v3, v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v3, :cond_46

    aget-object v5, v2, v4

    .line 201
    .local v5, "protectedCmd":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_43

    .line 202
    const-string v3, "This command is a protected command"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_41} :catch_4a

    .line 203
    const/4 v0, 0x1

    return v0

    .line 200
    .end local v5    # "protectedCmd":Ljava/lang/String;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 220
    :cond_46
    nop

    .line 222
    const/16 v0, 0xb0

    return v0

    .line 217
    :catch_4a
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    return v0
.end method

.method public static blacklist isMaintenanceMode()Z
    .registers 5

    .line 252
    const-string v0, "PACMClassifier"

    const/4 v1, 0x0

    .line 254
    .local v1, "maintenanceMode":Z
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 255
    .local v2, "userID":I
    const/16 v3, 0x4d

    if-ne v2, v3, :cond_c

    .line 256
    const/4 v1, 0x1

    .line 258
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maintenance mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_24

    .line 261
    nop

    .end local v2    # "userID":I
    goto :goto_2a

    .line 259
    :catch_24
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to get maintenance mode"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    return v1
.end method

.method public static blacklist putCommandList(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I
    .registers 6
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "atCmd"    # Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ")I"
        }
    .end annotation

    .line 334
    .local p0, "atMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 335
    const/high16 v0, -0x10000000

    return v0

    .line 337
    :cond_15
    const/4 v0, 0x0

    .line 338
    .local v0, "base":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 339
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 340
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_26
    if-nez v0, :cond_2e

    .line 344
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v0, v2

    .line 346
    :cond_2e
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return v1
.end method

.method public static blacklist putCommandList(Ljava/util/LinkedHashMap;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;)I"
        }
    .end annotation

    .line 354
    .local p0, "atMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/LinkedHashSet<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 355
    const/high16 v0, -0x10000000

    return v0

    .line 357
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 358
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;>;"
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    .line 360
    .local v2, "CmdRet":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->putCommandList(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I

    .line 361
    .end local v2    # "CmdRet":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    goto :goto_16

    .line 363
    :cond_2a
    return v1
.end method
