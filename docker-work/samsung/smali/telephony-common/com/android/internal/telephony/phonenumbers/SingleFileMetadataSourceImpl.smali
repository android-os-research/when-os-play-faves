.class final Lcom/android/internal/telephony/phonenumbers/SingleFileMetadataSourceImpl;
.super Ljava/lang/Object;
.source "SingleFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/MetadataSource;


# instance fields
.field private final blacklist metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

.field private final blacklist phoneNumberMetadataFileName:Ljava/lang/String;

.field private final blacklist phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public blacklist getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method
