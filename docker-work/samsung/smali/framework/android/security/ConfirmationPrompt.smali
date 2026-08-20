.class public Landroid/security/ConfirmationPrompt;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/ConfirmationPrompt$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ConfirmationPrompt"


# instance fields
.field private greylist-max-o mCallback:Landroid/security/ConfirmationCallback;

.field private final blacklist mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mExtraData:[B

.field private final greylist-max-o mKeyStore:Landroid/security/KeyStore;

.field private greylist-max-o mPromptText:Ljava/lang/CharSequence;

.field private blacklist mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;
    .registers 1

    iget-object p0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/security/ConfirmationPrompt;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/security/ConfirmationPrompt;Landroid/security/ConfirmationCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/security/ConfirmationPrompt;Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoCallback(Landroid/security/ConfirmationPrompt;I[BLandroid/security/ConfirmationCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;->doCallback(I[BLandroid/security/ConfirmationCallback;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "promptText"    # Ljava/lang/CharSequence;
    .param p3, "extraData"    # [B

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mKeyStore:Landroid/security/KeyStore;

    .line 131
    new-instance v0, Landroid/security/ConfirmationPrompt$1;

    invoke-direct {v0, p0}, Landroid/security/ConfirmationPrompt$1;-><init>(Landroid/security/ConfirmationPrompt;)V

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    .line 212
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    .line 214
    iput-object p3, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    .line 215
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Ljava/lang/CharSequence;[BLandroid/security/ConfirmationPrompt-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V

    return-void
.end method

.method private greylist-max-o doCallback(I[BLandroid/security/ConfirmationCallback;)V
    .registers 7
    .param p1, "responseCode"    # I
    .param p2, "dataThatWasConfirmed"    # [B
    .param p3, "callback"    # Landroid/security/ConfirmationCallback;

    .line 107
    packed-switch p1, :pswitch_data_3e

    .line 125
    :pswitch_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from onConfirmtionPromptCompleted() callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 121
    :pswitch_25
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "System error returned by ConfirmationUI."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    .line 122
    goto :goto_3c

    .line 117
    :pswitch_30
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onCanceled()V

    .line 118
    goto :goto_3c

    .line 113
    :pswitch_34
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onDismissed()V

    .line 114
    goto :goto_3c

    .line 109
    :pswitch_38
    invoke-virtual {p3, p2}, Landroid/security/ConfirmationCallback;->onConfirmed([B)V

    .line 110
    nop

    .line 129
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_3
        :pswitch_3
        :pswitch_25
    .end packed-switch
.end method

.method private blacklist getService()Landroid/security/AndroidProtectedConfirmation;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    if-nez v0, :cond_b

    .line 100
    new-instance v0, Landroid/security/AndroidProtectedConfirmation;

    invoke-direct {v0}, Landroid/security/AndroidProtectedConfirmation;-><init>()V

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    .line 102
    :cond_b
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mProtectedConfirmation:Landroid/security/AndroidProtectedConfirmation;

    return-object v0
.end method

.method private greylist-max-o getUiOptionsAsFlags()I
    .registers 9

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "uiOptionsAsFlags":I
    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 220
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 222
    .local v2, "inversionEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 223
    or-int/lit8 v0, v0, 0x1

    .line 225
    :cond_13
    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "font_scale"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 227
    .local v3, "fontScale":F
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_24

    .line 228
    or-int/lit8 v0, v0, 0x2

    .line 230
    :cond_24
    return v0
.end method

.method private static greylist-max-o isAccessibilityServiceRunning(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "serviceRunning":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 237
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_10

    .line 239
    .local v2, "a11yEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 240
    const/4 v0, 0x1

    .line 245
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "a11yEnabled":I
    :cond_f
    goto :goto_1b

    .line 242
    :catch_10
    move-exception v1

    .line 243
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ConfirmationPrompt"

    const-string v3, "Unexpected SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 246
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1b
    return v0
.end method

.method public static whitelist isSupported(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 333
    invoke-static {p0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 334
    const/4 v0, 0x0

    return v0

    .line 336
    :cond_8
    new-instance v0, Landroid/security/AndroidProtectedConfirmation;

    invoke-direct {v0}, Landroid/security/AndroidProtectedConfirmation;-><init>()V

    invoke-virtual {v0}, Landroid/security/AndroidProtectedConfirmation;->isConfirmationPromptSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist cancelPrompt()V
    .registers 4

    .line 311
    nop

    .line 312
    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getService()Landroid/security/AndroidProtectedConfirmation;

    move-result-object v0

    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    invoke-virtual {v0, v1}, Landroid/security/AndroidProtectedConfirmation;->cancelConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;)I

    move-result v0

    .line 313
    .local v0, "responseCode":I
    if-nez v0, :cond_e

    .line 314
    return-void

    .line 315
    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 319
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cancelConfirmationPrompt() call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmationPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public whitelist presentPrompt(Ljava/util/concurrent/Executor;Landroid/security/ConfirmationCallback;)V
    .registers 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/security/ConfirmationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/ConfirmationAlreadyPresentingException;,
            Landroid/security/ConfirmationNotAvailableException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    if-nez v0, :cond_6a

    .line 271
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 274
    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    .line 275
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 277
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "locale":Ljava/lang/String;
    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getUiOptionsAsFlags()I

    move-result v7

    .line 279
    .local v7, "uiOptionsAsFlags":I
    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getService()Landroid/security/AndroidProtectedConfirmation;

    move-result-object v1

    iget-object v2, p0, Landroid/security/ConfirmationPrompt;->mConfirmationCallback:Landroid/security/apc/IConfirmationCallback;

    iget-object v3, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    .line 280
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    .line 279
    move-object v5, v0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/security/AndroidProtectedConfirmation;->presentConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, "responseCode":I
    sparse-switch v1, :sswitch_data_70

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from presentConfirmationPrompt() call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfirmationPrompt"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 290
    :sswitch_57
    new-instance v2, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v2}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v2

    .line 287
    :sswitch_5d
    new-instance v2, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v2}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v2

    .line 284
    :sswitch_63
    return-void

    .line 272
    .end local v0    # "locale":Ljava/lang/String;
    .end local v1    # "responseCode":I
    .end local v7    # "uiOptionsAsFlags":I
    :cond_64
    new-instance v0, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v0}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v0

    .line 269
    :cond_6a
    new-instance v0, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v0}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v0

    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_63
        0x3 -> :sswitch_5d
        0x6 -> :sswitch_57
    .end sparse-switch
.end method
