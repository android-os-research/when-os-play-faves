.class public final Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method static blacklist writeToParcel(Ljava/lang/Class;Lcom/android/internal/telephony/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    const-string p0, "Exception trying to create proto from parcel"

    const-string v0, "PMNCreator"

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    const/4 v2, 0x0

    .line 64
    :try_start_d
    const-class v3, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Class;

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_2c} :catch_5b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_2c} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2c} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2c} :catch_4c
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_2c} :catch_47
    .catch Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_d .. :try_end_2c} :catch_42

    .line 68
    :try_start_2c
    invoke-static {v1, p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_2f} :catch_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_2f} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_2f} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_2f} :catch_36
    .catch Ljava/lang/InstantiationException; {:try_start_2c .. :try_end_2f} :catch_33
    .catch Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_60

    :catch_30
    move-exception p1

    move-object v2, v1

    goto :goto_43

    :catch_33
    move-exception p1

    move-object v2, v1

    goto :goto_48

    :catch_36
    move-exception p1

    move-object v2, v1

    goto :goto_4d

    :catch_39
    move-exception p1

    move-object v2, v1

    goto :goto_52

    :catch_3c
    move-exception p1

    move-object v2, v1

    goto :goto_57

    :catch_3f
    move-exception p1

    move-object v2, v1

    goto :goto_5c

    :catch_42
    move-exception p1

    .line 80
    :goto_43
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_47
    move-exception p1

    .line 78
    :goto_48
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_4c
    move-exception p1

    .line 76
    :goto_4d
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_51
    move-exception p1

    .line 74
    :goto_52
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_56
    move-exception p1

    .line 72
    :goto_57
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_5b
    move-exception p1

    .line 70
    :goto_5c
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    move-object v1, v2

    :goto_60
    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method
