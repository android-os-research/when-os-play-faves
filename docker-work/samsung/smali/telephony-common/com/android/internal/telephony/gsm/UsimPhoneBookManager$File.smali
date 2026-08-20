.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "File"
.end annotation


# instance fields
.field private final blacklist mEfid:I

.field private final blacklist mIndex:I

.field private final blacklist mParentTag:I

.field private final blacklist mSfi:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V
    .registers 6

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mParentTag:I

    .line 105
    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mEfid:I

    .line 106
    iput p4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mSfi:I

    .line 107
    iput p5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mIndex:I

    return-void
.end method


# virtual methods
.method public blacklist getEfid()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mEfid:I

    return p0
.end method

.method public blacklist getIndex()I
    .registers 1

    .line 113
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mIndex:I

    return p0
.end method

.method public blacklist getParentTag()I
    .registers 1

    .line 110
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mParentTag:I

    return p0
.end method

.method public blacklist getSfi()I
    .registers 1

    .line 112
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;->mSfi:I

    return p0
.end method
