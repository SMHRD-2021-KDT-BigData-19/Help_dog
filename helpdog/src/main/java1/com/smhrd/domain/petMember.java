package com.smhrd.domain;

public class petMember {
				private String id;
				private String petType;
				private String petGender;
				private String petNe;
				private String petBirth;

				public petMember(String id, String petType, String petGender, String petNe, String petBirth) {
					super();
					this.id = id;
					this.petType = petType;
					this.petGender = petGender;
					this.petNe = petNe;
					this.petBirth = petBirth;
				}

				public String getId() {
					return id;
				}

				public void setId(String id) {
					this.id = id;
				}

				public String getPetType() {
					return petType;
				}

				public void setPetType(String petType) {
					this.petType = petType;
				}

				public String getPetGender() {
					return petGender;
				}

				public void setPetGender(String petGender) {
					this.petGender = petGender;
				}

				public String getPetNe() {
					return petNe;
				}

				public void setPetNe(String petNe) {
					this.petNe = petNe;
				}

				public String getPetBirth() {
					return petBirth;
				}

				public void setPetBirth(String petBirth) {
					this.petBirth = petBirth;
				}

				@Override
				public String toString() {
					return "petMember [id=" + id + ", petType=" + petType + ", petGender=" + petGender + ", petNe="
							+ petNe + ", petBirth=" + petBirth + "]";
				}

		
}
