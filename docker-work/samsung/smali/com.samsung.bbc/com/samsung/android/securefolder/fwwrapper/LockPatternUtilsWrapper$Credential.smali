.class public Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Credential"
.end annotation


# instance fields
.field private passwordOrPin:Ljava/lang/String;

.field private pattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static bridge synthetic -$$Nest$fgetpasswordOrPin(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->passwordOrPin:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpattern(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->pattern:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->type:I

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->pattern:Ljava/util/List;

    .line 138
    iput-object p2, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->passwordOrPin:Ljava/lang/String;

    .line 139
    iput p1, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->passwordOrPin:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->pattern:Ljava/util/List;

    .line 144
    iput p1, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->type:I

    return-void
.end method
