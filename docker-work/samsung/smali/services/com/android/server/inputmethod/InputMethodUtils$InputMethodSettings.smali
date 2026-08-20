.class public Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSettings"
.end annotation


# static fields
.field public static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# instance fields
.field public mCopyOnWrite:Z

.field public final mCopyOnWriteDataStore:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentProfileIds:[I

.field public mCurrentUserId:I

.field public mEnabledInputMethodsStrCache:Ljava/lang/String;

.field public final mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mRes:Landroid/content/res/Resources;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 850
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 852
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 855
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 856
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;IZ)V"
        }
    .end annotation

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 838
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 848
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 858
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    const-string v1, ""

    .line 859
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    new-array v0, v0, [I

    .line 863
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    .line 912
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    .line 913
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    .line 914
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    .line 915
    invoke-virtual {p0, p4, p5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    return-void
.end method

.method public static buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 867
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3b

    .line 871
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_24
    return-void
.end method

.method public static buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 883
    :cond_c
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 888
    :cond_f
    :goto_f
    :try_start_f
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_59

    .line 889
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 890
    invoke-virtual {p2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 892
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 895
    :goto_2b
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 896
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 898
    :cond_39
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_f .. :try_end_41} :catch_42

    goto :goto_f

    :catch_42
    move-exception p0

    .line 903
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StringIndexOutOfBoundsException : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-object v0
.end method


# virtual methods
.method public final addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1166
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v0

    .line 1167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1168
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1174
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1181
    :cond_21
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_5

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 1059
    :cond_5
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 1061
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    goto :goto_2a

    .line 1063
    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method public buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1076
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1077
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1078
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    move v0, v4

    goto :goto_6

    :cond_1f
    if-eqz v1, :cond_27

    const/16 v3, 0x3a

    .line 1085
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_27
    move v1, v4

    .line 1089
    :goto_28
    invoke-static {p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    goto :goto_6

    :cond_2c
    if-eqz v0, :cond_35

    .line 1094
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    :cond_35
    return v0
.end method

.method public final createEnabledInputMethodListLocked(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1104
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_9

    .line 1105
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz p2, :cond_2f

    .line 1106
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1107
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_33
    return-object v0
.end method

.method public dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentProfileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCopyOnWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mEnabledInputMethodsStrCache="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 984
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public getCurrentUserId()I
    .registers 1

    .line 1412
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    return p0
.end method

.method public getDefaultVoiceInputMethod()Ljava/lang/String;
    .registers 3

    const-string v0, "default_voice_input_method"

    const/4 v1, 0x0

    .line 1368
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1004
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListWithFilterLocked(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListWithFilterLocked(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 1010
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->createEnabledInputMethodListLocked(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_14

    .line 1018
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1020
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1019
    invoke-static {p0, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_14
    const/4 p3, 0x0

    .line 1022
    invoke-static {p1, p3, p2, p0}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_69

    .line 1030
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1031
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v3, :cond_f

    .line 1032
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1033
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p0

    const/4 p1, 0x0

    :goto_3a
    if-ge p1, p0, :cond_69

    .line 1035
    invoke-virtual {v3, p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 1036
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1037
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1038
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_66
    add-int/lit8 p1, p1, 0x1

    goto :goto_3a

    :cond_69
    return-object v1
.end method

.method public getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodsStr()Ljava/lang/String;
    .registers 3

    const-string v0, "enabled_input_methods"

    const-string v1, ""

    .line 1130
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1240
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1241
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 1242
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1243
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5b

    if-eqz p2, :cond_86

    .line 1248
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-lez p1, :cond_86

    .line 1249
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    .line 1250
    invoke-static {p0, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 1252
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_41
    if-ge p2, p1, :cond_86

    .line 1254
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1255
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    return-object p3

    :cond_58
    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    .line 1262
    :cond_5b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1263
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1266
    :try_start_71
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1268
    invoke-static {p2, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result p0

    if-eqz p0, :cond_7c

    return-object p1

    .line 1271
    :cond_7c
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->-$$Nest$sfgetNOT_A_SUBTYPE_ID_STR()Ljava/lang/String;

    move-result-object p0
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_80} :catch_81

    return-object p0

    .line 1274
    :catch_81
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->-$$Nest$sfgetNOT_A_SUBTYPE_ID_STR()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1280
    :cond_86
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->-$$Nest$sfgetNOT_A_SUBTYPE_ID_STR()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 4

    .line 972
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 973
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1a

    .line 974
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_1a
    return p2

    .line 976
    :cond_1b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1199
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1205
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v1

    .line 1215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1216
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1219
    :cond_28
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1221
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1223
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1227
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedInputMethod()Ljava/lang/String;
    .registers 3

    const-string v0, "default_input_method"

    const/4 v1, 0x0

    .line 1352
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedInputMethodSubtypeHashCode()I
    .registers 3

    const-string/jumbo v0, "selected_input_method_subtype"

    const/4 v1, -0x1

    .line 1380
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .registers 3

    .line 1416
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez p1, :cond_c

    const/4 p0, -0x1

    return p0

    .line 1420
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result p0

    .line 1421
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    return p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 953
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 954
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1d

    .line 956
    :cond_15
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    if-eqz p0, :cond_20

    move-object p2, p0

    :cond_20
    return-object p2
.end method

.method public final getSubtypeHistoryStr()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "input_methods_subtype_history"

    const-string v1, ""

    .line 1321
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCurrentProfile(I)Z
    .registers 7

    .line 994
    monitor-enter p0

    .line 995
    :try_start_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    const/4 v0, 0x0

    move v2, v0

    .line 996
    :goto_a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    array-length v4, v3

    if-ge v2, v4, :cond_18

    .line 997
    aget v3, v3, v2

    if-ne p1, v3, :cond_15

    monitor-exit p0

    return v1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 999
    :cond_18
    monitor-exit p0

    return v0

    :catchall_1a
    move-exception p1

    .line 1000
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public isShowImeWithHardKeyboardEnabled()Z
    .registers 6

    const-string/jumbo v0, "ro.build.characteristics"

    .line 1385
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const-string/jumbo v3, "tablet"

    .line 1387
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 1390
    :goto_17
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    if-nez v3, :cond_29

    .line 1391
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v4, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1

    .line 1395
    :cond_29
    invoke-virtual {p0, v4, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShowKeyboardButton()Z
    .registers 4

    .line 1445
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const-string/jumbo v1, "show_keyboard_button"

    const/4 v2, 0x1

    if-nez v0, :cond_14

    .line 1446
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_12

    goto :goto_13

    :cond_12
    move v2, v0

    :goto_13
    return v2

    .line 1449
    :cond_14
    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSubtypeSelected()Z
    .registers 2

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    move-result-object v1

    .line 1290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v0

    .line 1296
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1297
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1298
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1299
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1301
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->-$$Nest$sfgetNOT_A_SUBTYPE_ID_STR()Ljava/lang/String;

    move-result-object v1

    .line 1303
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 1304
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1305
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1308
    :cond_48
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_10 .. :try_end_50} :catch_51

    goto :goto_15

    :catch_51
    move-exception p0

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringIndexOutOfBoundsException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "InputMethodUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-object v0
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .registers 3

    .line 980
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putDefaultVoiceInputMethod(Ljava/lang/String;)V
    .registers 3

    const-string v0, "default_voice_input_method"

    .line 1363
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putEnabledInputMethodsStr(Ljava/lang/String;)V
    .registers 4

    .line 1117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "enabled_input_methods"

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 1120
    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1122
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const-string p1, ""

    .line 1125
    :goto_15
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .registers 5

    .line 962
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_e

    .line 963
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 965
    :cond_e
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 966
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_21

    :cond_1f
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 967
    :goto_21
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_26
    return-void
.end method

.method public putSelectedInputMethod(Ljava/lang/String;)V
    .registers 4

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putSelectedInputMethodStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callers : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 1337
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodUtils"

    .line 1336
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default_input_method"

    .line 1339
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putSelectedSubtype(I)V
    .registers 3

    const-string/jumbo v0, "selected_input_method_subtype"

    .line 1347
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 941
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_a

    .line 942
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 944
    :cond_a
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 945
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_1d

    :cond_1b
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 946
    :goto_1d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_22
    return-void
.end method

.method public final putSubtypeHistoryStr(Ljava/lang/String;)V
    .registers 4

    .line 1188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "input_methods_subtype_history"

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 1191
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1193
    :cond_e
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 1426
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->-$$Nest$sfgetNOT_A_SUBTYPE_ID_STR()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_e

    .line 1428
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1430
    :cond_e
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 1431
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3b

    if-nez v1, :cond_1f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1143
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v2

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    .line 1147
    :goto_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 1148
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1149
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    .line 1150
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1151
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodUtils;->-$$Nest$sfgetNOT_A_SUBTYPE_ID_STR()Ljava/lang/String;

    move-result-object p3

    :cond_42
    if-eqz p2, :cond_4a

    const/16 v4, 0x3a

    .line 1154
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_4a
    move p2, v2

    .line 1158
    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1162
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSubtypeHistoryStr(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentProfileIds([I)V
    .registers 2

    .line 988
    monitor-enter p0

    .line 989
    :try_start_1
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    .line 990
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setShowImeWithHardKeyboard(Z)V
    .registers 4

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShowImeWithHardKeyboard show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 1404
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodUtils"

    .line 1403
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    .line 1407
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowKeyboardButton(Z)V
    .registers 3

    const-string/jumbo v0, "show_keyboard_button"

    .line 1454
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public switchCurrentUser(IZ)V
    .registers 4

    .line 930
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eq v0, p2, :cond_11

    .line 931
    :cond_8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-string v0, ""

    .line 932
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 935
    :cond_11
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 936
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    return-void
.end method
