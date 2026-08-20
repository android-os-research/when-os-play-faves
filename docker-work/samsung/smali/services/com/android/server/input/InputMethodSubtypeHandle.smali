.class public Lcom/android/server/input/InputMethodSubtypeHandle;
.super Ljava/lang/Object;
.source "InputMethodSubtypeHandle.java"


# instance fields
.field public final mInputMethodId:Ljava/lang/String;

.field public mLanguageTag:Ljava/lang/String;

.field public final mSubtypeId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    if-eqz p2, :cond_1b

    .line 36
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 37
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    goto :goto_1e

    :cond_1b
    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mSubtypeId:I

    :goto_1e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mSubtypeId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 58
    instance-of v1, p1, Lcom/android/server/input/InputMethodSubtypeHandle;

    if-nez v1, :cond_8

    goto :goto_1f

    .line 61
    :cond_8
    check-cast p1, Lcom/android/server/input/InputMethodSubtypeHandle;

    .line 62
    iget-object v1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/input/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget p0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 63
    invoke-virtual {p1}, Lcom/android/server/input/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result p1

    if-ne p0, p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    return v0
.end method

.method public getInputMethodId()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    return-object p0
.end method

.method public getSubtypeId()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mSubtypeId:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mSubtypeId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodSubtypeHandle{mInputMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLanguageTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubtypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/InputMethodSubtypeHandle;->mSubtypeId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
