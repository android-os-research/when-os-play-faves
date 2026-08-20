.class public Landroid/text/method/TextKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/TextKeyListener$SettingsObserver;,
        Landroid/text/method/TextKeyListener$NullKeyListener;,
        Landroid/text/method/TextKeyListener$Capitalize;
    }
.end annotation


# static fields
.field static final greylist-max-o ACTIVE:Ljava/lang/Object;

.field static final greylist-max-o AUTO_CAP:I = 0x1

.field static final greylist-max-o AUTO_PERIOD:I = 0x4

.field static final greylist-max-o AUTO_TEXT:I = 0x2

.field static final greylist-max-o CAPPED:Ljava/lang/Object;

.field static final greylist-max-o INHIBIT_REPLACEMENT:Ljava/lang/Object;

.field static final greylist-max-o LAST_TYPED:Ljava/lang/Object;

.field static final greylist-max-o SHOW_PASSWORD:I = 0x8

.field private static greylist-max-o sInstance:[Landroid/text/method/TextKeyListener;


# instance fields
.field private greylist-max-o mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private greylist-max-o mAutoText:Z

.field private greylist-max-o mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

.field private greylist-max-o mPrefs:I

.field private greylist-max-o mPrefsInited:Z

.field private greylist-max-o mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResolver(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrefsInited(Landroid/text/method/TextKeyListener;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePrefs(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/TextKeyListener;

    sput-object v0, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    .line 50
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .registers 3
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    .line 75
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 77
    iput-boolean p2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    .line 78
    return-void
.end method

.method public static whitelist clear(Landroid/text/Editable;)V
    .registers 5
    .param p0, "e"    # Landroid/text/Editable;

    .line 167
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 168
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 169
    sget-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 170
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 171
    sget-object v0, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 173
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 175
    .local v0, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    array-length v1, v0

    .line 176
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_30

    .line 177
    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 179
    .end local v2    # "i":I
    :cond_30
    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/TextKeyListener;
    .registers 2

    .line 103
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;
    .registers 5
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .line 89
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 91
    .local v0, "off":I
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    aget-object v2, v1, v0

    if-nez v2, :cond_14

    .line 92
    new-instance v2, Landroid/text/method/TextKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 95
    :cond_14
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private greylist-max-o getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 192
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 193
    .local v0, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    .line 195
    .local v1, "kind":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 196
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v2

    return-object v2

    .line 197
    :cond_14
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 198
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;

    move-result-object v2

    return-object v2

    .line 199
    :cond_20
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x5

    if-ne v1, v2, :cond_27

    goto :goto_2c

    .line 209
    :cond_27
    invoke-static {}, Landroid/text/method/TextKeyListener$NullKeyListener;->getInstance()Landroid/text/method/TextKeyListener$NullKeyListener;

    move-result-object v2

    return-object v2

    .line 206
    :cond_2c
    :goto_2c
    invoke-static {}, Landroid/text/method/QwertyKeyListener;->getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o initPrefs(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 266
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    .line 267
    new-instance v1, Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-direct {v1, p0}, Landroid/text/method/TextKeyListener$SettingsObserver;-><init>(Landroid/text/method/TextKeyListener;)V

    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    .line 268
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    :cond_1e
    invoke-direct {p0, v0}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    .line 272
    iput-boolean v2, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    .line 273
    return-void
.end method

.method public static whitelist shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z
    .registers 6
    .param p0, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I

    .line 120
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 121
    return v1

    .line 123
    :cond_6
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_c

    .line 124
    return v2

    .line 127
    :cond_c
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_13

    .line 128
    const/16 v0, 0x2000

    goto :goto_15

    :cond_13
    const/16 v0, 0x4000

    .line 127
    :goto_15
    invoke-static {p1, p2, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method private greylist-max-o updatePrefs(Landroid/content/ContentResolver;)V
    .registers 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 296
    const-string v0, "auto_caps"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 297
    .local v0, "cap":Z
    :goto_d
    const-string v3, "auto_replace"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    .line 298
    .local v3, "text":Z
    :goto_18
    const-string v4, "auto_punctuate"

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_22

    move v4, v1

    goto :goto_23

    :cond_22
    move v4, v2

    .line 299
    .local v4, "period":Z
    :goto_23
    const-string/jumbo v5, "show_password"

    invoke-static {p1, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2e

    move v5, v1

    goto :goto_2f

    :cond_2e
    move v5, v2

    .line 301
    .local v5, "pw":Z
    :goto_2f
    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    .line 302
    :goto_33
    if-eqz v3, :cond_37

    const/4 v6, 0x2

    goto :goto_38

    :cond_37
    move v6, v2

    :goto_38
    or-int/2addr v1, v6

    .line 303
    if-eqz v4, :cond_3d

    const/4 v6, 0x4

    goto :goto_3e

    :cond_3d
    move v6, v2

    :goto_3e
    or-int/2addr v1, v6

    .line 304
    if-eqz v5, :cond_43

    const/16 v2, 0x8

    :cond_43
    or-int/2addr v1, v2

    iput v1, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    .line 305
    return-void
.end method


# virtual methods
.method public whitelist getInputType()I
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method greylist-max-o getPrefs(Landroid/content/Context;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 308
    monitor-enter p0

    .line 309
    :try_start_1
    iget-boolean v0, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 310
    :cond_e
    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->initPrefs(Landroid/content/Context;)V

    .line 312
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    .line 314
    iget v0, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    return v0

    .line 312
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 139
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 141
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 154
    invoke-direct {p0, p3}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 156
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 147
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 149
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 181
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 8
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "st"    # I
    .param p6, "en"    # I

    .line 186
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_9

    .line 187
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 189
    :cond_9
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 182
    return-void
.end method

.method public whitelist release()V
    .registers 3

    .line 251
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1e

    .line 252
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 253
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_16

    .line 254
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 255
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 257
    :cond_16
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    .line 258
    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 259
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    .line 261
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1e
    return-void
.end method
