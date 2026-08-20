.class public final Lcom/android/server/utils/quota/Uptc;
.super Ljava/lang/Object;
.source "Uptc.java"


# instance fields
.field public final mHash:I

.field public final packageName:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    .line 42
    iput-object p2, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p1, p1, 0x1f

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    goto :goto_2b

    .line 47
    :cond_25
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    :goto_2b
    iput p1, p0, Lcom/android/server/utils/quota/Uptc;->mHash:I

    return-void
.end method

.method public static string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1a

    const-string p0, ""

    goto :goto_2b

    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "::"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 58
    iget v0, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 59
    iget-object v0, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    const-wide v0, 0x10900000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Lcom/android/server/utils/quota/Uptc;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 71
    check-cast p1, Lcom/android/server/utils/quota/Uptc;

    .line 72
    iget v1, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget v3, p1, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne v1, v3, :cond_26

    iget-object v1, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    .line 73
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object p0, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    :cond_28
    return v2
.end method

.method public hashCode()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/server/utils/quota/Uptc;->mHash:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 52
    iget v0, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget-object v1, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
