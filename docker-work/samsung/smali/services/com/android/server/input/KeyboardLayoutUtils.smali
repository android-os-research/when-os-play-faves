.class public final Lcom/android/server/input/KeyboardLayoutUtils;
.super Ljava/lang/Object;
.source "KeyboardLayoutUtils.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final INPUT_DEVICES_ATTR_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field public static final INPUT_DEVICES_PKG_NAME:Ljava/lang/String; = "com.android.inputdevices"

.field public static final INPUT_METHOD_SEPARATER:C = ':'

.field public static final INPUT_METHOD_SUBTYPE_SEPARATER:C = ';'

.field public static final SEC_IME_CMP_NAME:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field public static final SEC_IME_PKG_NAME:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field public static final SEC_LEGACY_IME_CMP_NAME:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field public static final SEC_LEGACY_IME_PKG_NAME:Ljava/lang/String; = "com.sec.android.inputmethod"

.field public static final TAG:Ljava/lang/String; = "InputManager"

.field public static final sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public static final sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 57
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterIfAvailableInputMethods(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 114
    :cond_8
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 118
    :cond_32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_42
    return-object v0
.end method

.method public static getDefaultKeyboardLayoutForSubtype(Landroid/view/inputmethod/InputMethodSubtype;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_ba

    if-eqz p1, :cond_ba

    .line 180
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_ba

    .line 189
    :cond_d
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 190
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_24

    .line 191
    new-instance v1, Ljava/util/Locale;

    aget-object p0, p0, v3

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_33

    .line 192
    :cond_24
    array-length v1, p0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_32

    .line 193
    new-instance v1, Ljava/util/Locale;

    aget-object v4, p0, v3

    aget-object p0, p0, v2

    invoke-direct {v1, v4, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_32
    move-object v1, v0

    :goto_33
    if-eqz v1, :cond_ba

    .line 196
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto/16 :goto_ba

    .line 203
    :cond_41
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4a
    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    .line 205
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v5

    move v6, v3

    :goto_5f
    if-ge v6, v5, :cond_4a

    .line 208
    invoke-virtual {v4, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/server/input/KeyboardLayoutUtils;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 209
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 220
    :cond_72
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 223
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    move v2, v3

    :goto_7a
    if-ge v2, p1, :cond_aa

    .line 225
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 226
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 227
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    move v7, v3

    :goto_8b
    if-ge v7, v6, :cond_a7

    .line 229
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 230
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 235
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_8b

    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 246
    :cond_aa
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_ba

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    :cond_ba
    :goto_ba
    return-object v0
.end method

.method public static getEnabledInputMethodsAndSubtypes(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 87
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    .line 91
    :cond_f
    sget-object v1, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 92
    :cond_14
    :goto_14
    sget-object p0, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 93
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 94
    sget-object v1, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 96
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 97
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_34
    sget-object v2, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 99
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 101
    :cond_44
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_48
    return-object v0
.end method

.method public static getEnabledSubtypeIdsOf(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 141
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    if-eqz p0, :cond_b

    return-object p0

    .line 147
    :cond_b
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static getInputMethodInfoOf(Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 63
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageNameFromCmpName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const-string v0, "/."

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getStringFromInputDevices(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    if-nez p2, :cond_7

    goto :goto_1b

    :cond_7
    const/4 v0, 0x0

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    .line 268
    invoke-interface {p0, v1, p2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_16

    .line 270
    invoke-interface {p0, v1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :cond_16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4

    .line 251
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 255
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 256
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 257
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public static isSubtypeInEnabledList(Ljava/lang/String;Ljava/util/HashSet;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSubtypeListChanged(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    if-eqz p0, :cond_43

    if-nez p1, :cond_c

    goto :goto_43

    .line 158
    :cond_c
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_43

    .line 159
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v2, v1

    goto :goto_3f

    :cond_3e
    move v2, v0

    :goto_3f
    if-nez v2, :cond_1a

    return v1

    :cond_42
    return v0

    :cond_43
    :goto_43
    return v1
.end method
