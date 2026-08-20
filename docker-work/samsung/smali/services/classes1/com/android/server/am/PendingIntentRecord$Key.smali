.class public final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field public final activity:Landroid/os/IBinder;

.field public allIntents:[Landroid/content/Intent;

.field public allResolvedTypes:[Ljava/lang/String;

.field public final featureId:Ljava/lang/String;

.field public final flags:I

.field public final hashCode:I

.field public final options:Lcom/android/server/wm/SafeActivityOptions;

.field public final packageName:Ljava/lang/String;

.field public final requestCode:I

.field public final requestIntent:Landroid/content/Intent;

.field public final requestResolvedType:Ljava/lang/String;

.field public final type:I

.field public final userId:I

.field public final who:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V
    .registers 13

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 119
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 122
    iput-object p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 123
    iput p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    const/4 p3, 0x0

    if-eqz p7, :cond_18

    .line 124
    array-length v0, p7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p7, v0

    goto :goto_19

    :cond_18
    move-object v0, p3

    :goto_19
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz p8, :cond_22

    .line 125
    array-length p3, p8

    add-int/lit8 p3, p3, -0x1

    aget-object p3, p8, p3

    :cond_22
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 126
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 127
    iput-object p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 128
    iput p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 129
    iput-object p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 130
    iput p11, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/16 p7, 0x353

    add-int/2addr p7, p9

    mul-int/lit8 p7, p7, 0x25

    add-int/2addr p7, p6

    mul-int/lit8 p7, p7, 0x25

    add-int/2addr p7, p11

    if-eqz p5, :cond_40

    mul-int/lit8 p7, p7, 0x25

    .line 137
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p5

    add-int/2addr p7, p5

    :cond_40
    if-eqz p4, :cond_49

    mul-int/lit8 p7, p7, 0x25

    .line 140
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p4

    add-int/2addr p7, p4

    :cond_49
    if-eqz v0, :cond_52

    mul-int/lit8 p7, p7, 0x25

    .line 143
    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    move-result p4

    add-int/2addr p7, p4

    :cond_52
    if-eqz p3, :cond_5b

    mul-int/lit8 p7, p7, 0x25

    .line 146
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p7, p3

    :cond_5b
    mul-int/lit8 p7, p7, 0x25

    if-eqz p2, :cond_64

    .line 148
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    goto :goto_65

    :cond_64
    const/4 p2, 0x0

    :goto_65
    add-int/2addr p7, p2

    mul-int/lit8 p7, p7, 0x25

    add-int/2addr p7, p1

    .line 150
    iput p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 161
    :cond_4
    :try_start_4
    check-cast p1, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 162
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v1, v2, :cond_d

    return v0

    .line 165
    :cond_d
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v1, v2, :cond_14

    return v0

    .line 168
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 171
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v0

    .line 174
    :cond_2a
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eq v1, v2, :cond_31

    return v0

    .line 177
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v0

    .line 180
    :cond_3c
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v1, v2, :cond_43

    return v0

    .line 183
    :cond_43
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v1, v2, :cond_55

    if-eqz v1, :cond_52

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_55

    return v0

    :cond_52
    if-eqz v2, :cond_55

    return v0

    .line 192
    :cond_55
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v0

    .line 195
    :cond_60
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_64
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_64} :catch_69

    if-eq p0, p1, :cond_67

    return v0

    :cond_67
    const/4 p0, 0x1

    return p0

    :catch_69
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return p0
.end method

.method public toSecureString(Z)Ljava/lang/String;
    .registers 6

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_33
    const-string v1, ""

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_48

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_4a

    :cond_48
    const-string p1, "<null>"

    .line 222
    :goto_4a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " flags=0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "} requestCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 228
    iget p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 240
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string/jumbo p0, "startForegroundService"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "startService"

    return-object p0

    :cond_1e
    const-string p0, "activityResult"

    return-object p0

    :cond_21
    const-string/jumbo p0, "startActivity"

    return-object p0

    :cond_25
    const-string p0, "broadcastIntent"

    return-object p0
.end method
