.class public final Lcom/android/server/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;,
        Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    }
.end annotation


# static fields
.field public static CONTRY_CODE:Ljava/lang/String; = "none"

.field public static final DEBUG:Z = false

.field public static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final GOOGLE_VOICE_ID:Ljava/lang/String; = "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

.field public static final INPUT_METHOD_SEPARATOR:C = ':'

.field public static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field public static final METHOD_ID_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field public static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field public static final PACKAGE_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field public static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field public static final SUBTYPE_MODE_ANY:Ljava/lang/String; = null

.field public static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field public static final SWYPE_PACKAGE:Ljava/lang/String; = "com.nuance.swype.input/.IME"

.field public static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field public static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"

.field public static final sCacheLock:Ljava/lang/Object;

.field public static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation
.end field

.field public static sCachedResult:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field public static sCachedSystemLocales:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation
.end field

.field public static final sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetNOT_A_SUBTYPE_ID_STR()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 95
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const/4 v0, -0x1

    .line 96
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    .line 110
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    .line 500
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 2

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 696
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .registers 3

    .line 823
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static chooseSystemVoiceIme(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 382
    :cond_8
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz p2, :cond_21

    .line 384
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 385
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p2

    .line 389
    :cond_21
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v0, 0x0

    move-object v2, v1

    :goto_27
    if-ge v0, p2, :cond_63

    .line 391
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 392
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_60

    .line 395
    :cond_36
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_60

    :cond_41
    if-eqz v2, :cond_5f

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At most one InputMethodService can be published in systemSpeechRecognizer: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Ignoring all of them."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5f
    move-object v2, v3

    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_63
    return-object v2
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 414
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_6a

    .line 416
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    if-eqz p2, :cond_34

    .line 418
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 420
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 421
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_65

    .line 425
    :cond_34
    new-instance v4, Ljava/util/Locale;

    .line 426
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_65

    .line 431
    :cond_50
    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_68

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 432
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_68

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_68
    :goto_68
    const/4 p0, 0x1

    return p0

    :cond_6a
    return v0
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_67

    .line 646
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_67

    .line 649
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 650
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 652
    :cond_1a
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 656
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move-object v2, v0

    :goto_26
    if-ge v3, v1, :cond_61

    .line 658
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 659
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 660
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_48

    .line 663
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    :cond_48
    if-nez v0, :cond_4b

    move-object v0, v5

    .line 667
    :cond_4b
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    move-object v2, v5

    goto :goto_61

    :cond_53
    if-nez v4, :cond_5e

    .line 671
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    const/4 v2, 0x1

    move v4, v2

    move-object v2, v5

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_61
    :goto_61
    if-nez v2, :cond_66

    if-eqz p4, :cond_66

    return-object v0

    :cond_66
    return-object v2

    :cond_67
    :goto_67
    return-object v0
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .registers 5

    .line 136
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    .line 139
    :goto_e
    array-length v3, v0

    if-ge v1, v3, :cond_2a

    .line 140
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_26

    :cond_1e
    const-string v4, "Transact("

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2a

    :goto_26
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_e

    :cond_2a
    return-object v2
.end method

.method public static getAuxilaryRemoveList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1520
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 1521
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    .line 1522
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "com.samsung.android.svoiceime/.BixbyDictVoiceReco"

    .line 1523
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    .line 1524
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1525
    :cond_29
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_31
    return-object p0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 360
    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 347
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    .line 349
    invoke-static {p1, p0, v5, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v0

    if-nez p2, :cond_1c

    const/4 v4, 0x1

    const/4 v6, 0x1

    .line 351
    sget-object v7, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object p2

    .line 353
    invoke-virtual {p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 355
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_2a

    aget-object v10, v0, v3

    move v11, v2

    .line 178
    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_27

    .line 179
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-string/jumbo v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    return-object v10

    :cond_24
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 188
    :cond_2a
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    move v3, v2

    :goto_2e
    if-ge v3, v1, :cond_53

    aget-object v10, v0, v3

    move v11, v2

    .line 189
    :goto_33
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_50

    .line 190
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    return-object v10

    :cond_4d
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 197
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found no fallback locale. imis="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .registers 7

    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 796
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.honeyboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    if-eqz p2, :cond_52

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 802
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 801
    invoke-virtual {p2, p0, v3, p1}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 803
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, ""

    goto :goto_4c

    .line 804
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4c
    aput-object p1, v1, p0

    .line 801
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_52
    return-object v0
.end method

.method public static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 513
    sget-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_b
    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v2, p1, :cond_20

    .line 517
    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object p0

    .line 519
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_36

    .line 525
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p0

    .line 526
    monitor-enter v1

    .line 528
    :try_start_26
    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 529
    sput-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 530
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 531
    monitor-exit v1

    return-object p0

    :catchall_33
    move-exception p0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_33

    throw p0

    :catchall_36
    move-exception p0

    .line 519
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public static getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 537
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 538
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    .line 539
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 541
    :cond_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 544
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move v5, v1

    :goto_2b
    if-ge v5, v3, :cond_49

    .line 547
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 548
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 549
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    .line 550
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 551
    invoke-virtual {v4, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 555
    :cond_49
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_59

    .line 556
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 559
    :cond_59
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 561
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_64
    const-string/jumbo v7, "keyboard"

    if-ge v6, v3, :cond_97

    .line 564
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 565
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    .line 566
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 567
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 569
    :cond_7d
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 570
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_8b
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_94
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 576
    :cond_97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 577
    sget-object v6, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v5, v6, v0, v3}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 580
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_e7

    .line 582
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v1

    :goto_ad
    if-ge v9, v6, :cond_c0

    .line 584
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    .line 585
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v10

    if-eqz v10, :cond_bd

    move v6, v8

    goto :goto_c1

    :cond_bd
    add-int/lit8 v9, v9, 0x1

    goto :goto_ad

    :cond_c0
    move v6, v1

    :goto_c1
    if-nez v6, :cond_e7

    .line 591
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_c7
    if-ge v1, v6, :cond_e7

    .line 593
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 594
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    .line 595
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    const-string v10, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v9, v10}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 597
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e4
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 603
    :cond_e7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 604
    invoke-static {p0, p1, v7, v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    if-eqz p0, :cond_f6

    .line 607
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_f6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_fe
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_110

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 613
    sget-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {p1, v1, v0, v3}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    goto :goto_fe

    :cond_110
    return-object v3
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x5f

    .line 625
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    return-object p0

    :cond_9
    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .line 303
    new-instance v7, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder-IA;)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 304
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 306
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    return-object v7

    :cond_19
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 309
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 311
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    return-object v7

    :cond_2c
    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 314
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 316
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    return-object v7

    :cond_3f
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 319
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 321
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    return-object v7

    :cond_52
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 324
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 326
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    return-object v7

    :cond_65
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "keyboard"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 329
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 331
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_78

    return-object v7

    .line 334
    :cond_78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No software keyboard is found. imis="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " systemLocale="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " fallbackLocale="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    if-eqz p0, :cond_80

    .line 449
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_80

    .line 453
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_47

    .line 458
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 459
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMostApplicableDefaultIME(): Set the default IME to Honeyboard"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_47
    const/4 v2, -0x1

    :cond_48
    :goto_48
    if-lez v0, :cond_75

    add-int/lit8 v0, v0, -0x1

    .line 468
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 469
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_48

    .line 472
    :cond_59
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_6b

    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string/jumbo v5, "keyboard"

    invoke-static {v3, v4, v1, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    return-object v3

    :cond_6b
    if-gez v2, :cond_48

    .line 476
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_48

    move v2, v0

    goto :goto_48

    .line 480
    :cond_75
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    return-object p0

    :cond_80
    :goto_80
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .registers 5

    if-eqz p0, :cond_17

    .line 489
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 491
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    if-ne p1, v2, :cond_14

    return v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    .line 443
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v0
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 1

    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSoftInputModeStateVisibleAllowed(II)Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-ge p0, v1, :cond_6

    return v0

    :cond_6
    and-int/lit8 p0, p1, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return v1

    :cond_c
    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method public static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .registers 5

    .line 203
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p2, :cond_11

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    .line 209
    :cond_11
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result p1

    if-nez p1, :cond_18

    return v1

    .line 212
    :cond_18
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    move p2, v1

    :goto_1d
    if-ge p2, p1, :cond_2e

    .line 214
    invoke-virtual {p0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    :cond_2e
    return v1
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .registers 8

    .line 159
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p2, :cond_11

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    .line 165
    :cond_11
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .registers 2

    .line 484
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static resolveUserId(IILjava/io/PrintWriter;)[I
    .registers 6

    .line 1488
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1489
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, -0x1

    if-ne p0, v1, :cond_10

    .line 1492
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v1, -0x2

    const/4 v2, 0x0

    if-ne p0, v1, :cond_16

    move p0, p1

    goto :goto_30

    :cond_16
    if-gez p0, :cond_2a

    if-eqz p2, :cond_27

    const-string p1, "Pseudo user ID "

    .line 1500
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " is not supported."

    .line 1502
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    new-array p0, v2, [I

    return-object p0

    .line 1505
    :cond_2a
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p1

    if-eqz p1, :cond_36

    :goto_30
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p0, p1, v2

    return-object p1

    :cond_36
    if-eqz p2, :cond_45

    const-string p1, "User #"

    .line 1509
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " does not exit."

    .line 1511
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_45
    new-array p0, v2, [I

    return-object p0
.end method

.method public static setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 7

    const-string v0, " userId="

    const-string v1, "InputMethodUtils"

    .line 764
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_34

    if-eqz v2, :cond_d

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    :cond_d
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 776
    :try_start_f
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception v2

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApplicationEnabledSetting failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 780
    invoke-static {v1, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_34
    move-exception v2

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationEnabledSetting failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 766
    invoke-static {v1, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .line 705
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 707
    array-length v1, v0

    if-nez v1, :cond_12

    goto/16 :goto_95

    .line 712
    :cond_12
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerInternal;->get()Lcom/android/server/textservices/TextServicesManagerInternal;

    move-result-object v1

    .line 713
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v2

    .line 712
    invoke-virtual {v1, v2}, Lcom/android/server/textservices/TextServicesManagerInternal;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 714
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v2, :cond_95

    aget-object v5, v0, v4

    move v6, v3

    .line 719
    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_42

    .line 720
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 721
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    move v6, v8

    goto :goto_43

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_42
    move v6, v3

    :goto_43
    if-eqz v6, :cond_46

    goto :goto_92

    :cond_46
    if-eqz v1, :cond_53

    .line 731
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    goto :goto_92

    :cond_53
    const-wide/32 v6, 0x8000

    .line 741
    :try_start_56
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v6

    .line 740
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_5e} :catch_6f

    if-nez v6, :cond_61

    goto :goto_92

    .line 752
    :cond_61
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_67

    goto :goto_68

    :cond_67
    move v8, v3

    :goto_68
    if-nez v8, :cond_6b

    goto :goto_92

    .line 756
    :cond_6b
    invoke-static {p0, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_92

    :catch_6f
    move-exception v6

    .line 744
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationInfo failed. packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "InputMethodUtils"

    .line 744
    invoke-static {v7, v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_95
    :goto_95
    return-void
.end method
