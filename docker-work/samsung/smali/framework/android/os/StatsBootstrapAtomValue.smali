.class public final Landroid/os/StatsBootstrapAtomValue;
.super Ljava/lang/Object;
.source "StatsBootstrapAtomValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsBootstrapAtomValue$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsBootstrapAtomValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist boolValue:I = 0x0

.field public static final blacklist bytesValue:I = 0x5

.field public static final blacklist floatValue:I = 0x3

.field public static final blacklist intValue:I = 0x1

.field public static final blacklist longValue:I = 0x2

.field public static final blacklist stringValue:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$1;

    invoke-direct {v0}, Landroid/os/StatsBootstrapAtomValue$1;-><init>()V

    sput-object v0, Landroid/os/StatsBootstrapAtomValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/StatsBootstrapAtomValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 214
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 217
    return-void

    .line 215
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/os/StatsBootstrapAtomValue;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 232
    iput p1, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    .line 233
    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    .line 234
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 220
    packed-switch p1, :pswitch_data_32

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_1d
    const-string v0, "bytesValue"

    return-object v0

    .line 225
    :pswitch_20
    const-string/jumbo v0, "stringValue"

    return-object v0

    .line 224
    :pswitch_24
    const-string v0, "floatValue"

    return-object v0

    .line 223
    :pswitch_27
    const-string/jumbo v0, "longValue"

    return-object v0

    .line 222
    :pswitch_2b
    const-string/jumbo v0, "intValue"

    return-object v0

    .line 221
    :pswitch_2f
    const-string v0, "boolValue"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist boolValue(Z)Landroid/os/StatsBootstrapAtomValue;
    .registers 4
    .param p0, "_value"    # Z

    .line 44
    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bytesValue([B)Landroid/os/StatsBootstrapAtomValue;
    .registers 3
    .param p0, "_value"    # [B

    .line 119
    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist floatValue(F)Landroid/os/StatsBootstrapAtomValue;
    .registers 4
    .param p0, "_value"    # F

    .line 89
    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist intValue(I)Landroid/os/StatsBootstrapAtomValue;
    .registers 4
    .param p0, "_value"    # I

    .line 59
    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist longValue(J)Landroid/os/StatsBootstrapAtomValue;
    .registers 5
    .param p0, "_value"    # J

    .line 74
    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist stringValue(Ljava/lang/String;)Landroid/os/StatsBootstrapAtomValue;
    .registers 3
    .param p0, "_value"    # Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/os/StatsBootstrapAtomValue;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    .line 210
    return v0
.end method

.method public blacklist getBoolValue()Z
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getBytesValue()[B
    .registers 2

    .line 123
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getFloatValue()F
    .registers 2

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public blacklist getIntValue()I
    .registers 2

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getLongValue()J
    .registers 3

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getStringValue()Ljava/lang/String;
    .registers 2

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_62

    .line 202
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 199
    .local v1, "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 200
    return-void

    .line 193
    .end local v1    # "_aidl_value":[B
    :pswitch_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 195
    return-void

    .line 188
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 189
    .local v1, "_aidl_value":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 190
    return-void

    .line 183
    .end local v1    # "_aidl_value":F
    :pswitch_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 184
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 185
    return-void

    .line 178
    .end local v1    # "_aidl_value":J
    :pswitch_49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 180
    return-void

    .line 173
    .end local v1    # "_aidl_value":I
    :pswitch_55
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 174
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 175
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_55
        :pswitch_49
        :pswitch_3d
        :pswitch_31
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setBoolValue(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setBytesValue([B)V
    .registers 3
    .param p1, "_value"    # [B

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public blacklist setFloatValue(F)V
    .registers 4
    .param p1, "_value"    # F

    .line 98
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist setIntValue(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setLongValue(J)V
    .registers 5
    .param p1, "_value"    # J

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setStringValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "_value"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 144
    iget v0, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/os/StatsBootstrapAtomValue;->_tag:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 162
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getBytesValue()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3b

    .line 159
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    goto :goto_3b

    .line 156
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getFloatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    goto :goto_3b

    .line 153
    :pswitch_23
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    goto :goto_3b

    .line 150
    :pswitch_2b
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    goto :goto_3b

    .line 147
    :pswitch_33
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue;->getBoolValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    nop

    .line 165
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
